<?php

class sessionLiveForumStudentModel extends Database
{
    public function getSessionDetails($sessionId)
    {
        $query = "SELECT session_id, session_name, course_id FROM session WHERE session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function insertSessionQuestion($question, $sessionId, $studentId, $randomStatus = "F")
    {
        $question = mysqli_real_escape_string($GLOBALS["db"], $question);

        $query = "INSERT INTO session_forum_question(question, session_id, student_id, random_status) VALUES ('$question', '$sessionId', '$studentId', '$randomStatus')";
        mysqli_query($GLOBALS["db"], $query);
    }
}
