<?php

class MyCourseSessionsListModel extends Database
{
    // Return course details
    public function getCourseDetils($courseId)
    {
        $query = "SELECT course_id, course_name FROM course WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    // Return session details with poll count
    public function getSessionsSummary($courseId)
    {
        $query = "SELECT session.session_id, session_name, COUNT(question_no) AS count, DATE_FORMAT(create_date, '%M %d %Y') AS date FROM session INNER JOIN session_question ON session.session_id=session_question.session_id WHERE question_status='T' AND course_id='$courseId' GROUP BY session.session_id ORDER BY session.session_id, question_no";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    // Return session question
    public function getSessionQuestions($courseId)
    {
        $query = "SELECT question_no, question FROM session_question WHERE session_id IN(SELECT session_id FROM session WHERE course_id='$courseId') ORDER BY session_id, question_no";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }
}
