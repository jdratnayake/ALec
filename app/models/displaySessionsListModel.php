<?php

class DisplaySessionsListModel extends Database
{
    public function getSelectedCourses($userId)
    {
        $query = "SELECT course.course_id, course_name FROM course_registration_lec INNER JOIN course ON course_registration_lec.course_id=course.course_id WHERE lecturer_id='$userId'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function getActiveSessions($userId)
    {
        $query = "SELECT session_id, session_name FROM session WHERE lecturer_id='$userId' AND status='T' ORDER BY create_date DESC";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function getNotActiveSessions($userId)
    {
        $query = "SELECT session_id, session_name FROM session WHERE lecturer_id='$userId' AND status='F' ORDER BY create_date DESC";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }


    public function createSession($sessionName, $userId, $courseId)
    {
        $query = "INSERT INTO session(session_name, create_date, lecturer_id, course_id) VALUES('$sessionName', NOW(), '$userId', '$courseId')";
        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT session_id FROM session ORDER BY session_id DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["session_id"];
    }
}
