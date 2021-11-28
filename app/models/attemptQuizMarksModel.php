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

    public function getShortAnswerChoice($questionId)
    {
        $questionId = mysqli_real_escape_string($GLOBALS["db"], $questionId);

        $query = "SELECT choice_name FROM question_choice WHERE question_no='$questionId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["choice_name"];
    }

    public function updateSucessRate($questionId, $sucessRate)
    {
        $query = "UPDATE quiz_question SET success_rate='$sucessRate' WHERE question_no='$questionId'";
        mysqli_query($GLOBALS["db"], $query);
    }

    public function getAttemptCount($quizId)
    {
        $query = "SELECT COUNT($quizId) AS total FROM quiz_attempt WHERE quiz_id='$quizId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["total"];
    }

    public function getSucessRate($questionId)
    {
        $query = "SELECT success_rate FROM quiz_question WHERE question_no='$questionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["success_rate"];
    }

    public function insertAttempt($userId, $quizId, $marks)
    {
        $query = "INSERT INTO quiz_attempt(student_id, quiz_id, marks) VALUES('$userId', '$quizId', '$marks')";

        mysqli_query($GLOBALS["db"], $query);
    }
}
