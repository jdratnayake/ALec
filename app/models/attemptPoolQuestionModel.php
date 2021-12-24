<?php

class AttemptPoolQuestionModel extends Database
{
    public function getSessionId($courseId)
    {
        $query = "SELECT active_session_id FROM course WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["active_session_id"];
    }

    public function getSessionDetails($sessionId)
    {
        $query = "SELECT * FROM session WHERE session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
