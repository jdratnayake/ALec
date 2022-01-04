<?php

class ShowPollAnswerModel extends Database
{
    public function getQuestionDetails($questionNo)
    {
        $query = "SELECT question_no, question_type, question FROM session_question WHERE question_no='$questionNo'";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }
}
