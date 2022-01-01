<?php

class sessionLiveForumStudentModel extends Database
{
    public function getSessionDetails($sessionId)
    {
        $query = "SELECT session_id, session_name FROM session WHERE session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }
}
