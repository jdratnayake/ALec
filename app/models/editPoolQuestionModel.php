<?php

class EditPoolQuestionModel extends Database
{
    public function getQuestionDetails($questionNo)
    {
        $query = "SELECT * FROM session_question WHERE question_no='$questionNo'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return mysqli_fetch_assoc($result);
    }

    public function getSessionDetails($sessionId)
    {
        $query = "SELECT session_id, session_name FROM session WHERE session_id='$sessionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getAnswers($questionNo)
    {
    }
}
