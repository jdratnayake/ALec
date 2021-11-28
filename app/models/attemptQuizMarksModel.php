<?php

class AttemptQuizMarksModel extends Database
{
    public function getQuestionDetails($quizId)
    {
        $query = "SELECT question_no, question_type FROM quiz_question WHERE quiz_id='$quizId' ORDER BY question_no";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }
}
