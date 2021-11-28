<?php

class AttemptQuizMarksModel extends Database
{
    public function getChoiceMark($choiceId)
    {
        $choiceId = mysqli_real_escape_string($GLOBALS["db"], $choiceId);

        $query = "SELECT points FROM question_choice WHERE choice_id='$choiceId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["points"];
    }

    public function getChoiceIds($questionId)
    {
        $questionId = mysqli_real_escape_string($GLOBALS["db"], $questionId);

        $query = "SELECT DISTINCT choice_id FROM question_choice WHERE question_no='$questionId'";
        $reuslt = mysqli_query($GLOBALS["db"], $query);

        return $reuslt;
    }

    public function getShortAnswerChoice($choiceId)
    {
        $choiceId = mysqli_real_escape_string($GLOBALS["db"], $choiceId);

        $query = "SELECT choice_name FROM question_choice WHERE choice_id='$choiceId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["choice_name"];
    }
}
