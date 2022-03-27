<?php

class AttemptQuizMarksModel extends Database
{
    // Return points of the quiz question choice
    public function getChoiceMark($choiceId)
    {
        $choiceId = mysqli_real_escape_string($GLOBALS["db"], $choiceId);

        $query = "SELECT points FROM question_choice WHERE choice_id='$choiceId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["points"];
    }

    // Return choice ids of a question
    public function getChoiceIds($questionId)
    {
        $questionId = mysqli_real_escape_string($GLOBALS["db"], $questionId);

        $query = "SELECT DISTINCT choice_id FROM question_choice WHERE question_no='$questionId'";
        $reuslt = mysqli_query($GLOBALS["db"], $query);

        return $reuslt;
    }

    // Return short answer choice
    public function getShortAnswerChoice($questionId)
    {
        $questionId = mysqli_real_escape_string($GLOBALS["db"], $questionId);

        $query = "SELECT choice_name FROM question_choice WHERE question_no='$questionId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["choice_name"];
    }

    // Update success rate of the question
    public function updateSucessRate($questionId, $sucessRate)
    {
        $query = "UPDATE quiz_question SET success_rate='$sucessRate' WHERE question_no='$questionId'";
        mysqli_query($GLOBALS["db"], $query);
    }

    // Get attempted count of a quiz
    public function getAttemptCount($quizId)
    {
        $query = "SELECT COUNT($quizId) AS total FROM quiz_attempt WHERE quiz_id='$quizId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["total"];
    }

    // Return old success rate of the question
    public function getSucessRate($questionId)
    {
        $query = "SELECT success_rate FROM quiz_question WHERE question_no='$questionId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["success_rate"];
    }

    // Update student attempt
    public function updateAttempt($userId, $quizId, $marks)
    {
        $query = "UPDATE quiz_attempt SET marks='$marks' WHERE student_id='$userId' AND quiz_id='$quizId'";

        mysqli_query($GLOBALS["db"], $query);

        $this->insertMarks($userId, "quiz", $marks);
    }
}
