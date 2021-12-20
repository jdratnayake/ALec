<?php

class ViewSessionModel extends Database
{
    public function getSessionDetails($sessionId)
    {
        $query = "SELECT session_id, session_name, status, DATE(create_date), course_name FROM session INNER JOIN course ON session.course_id=course.course_id WHERE session_id='$sessionId'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return mysqli_fetch_assoc($result);
    }

    public function setStatus($sessionId, $status)
    {
        $query = "UPDATE session SET status='$status' WHERE session_id='$sessionId'";

        mysqli_query($GLOBALS["db"], $query);
    }
}
