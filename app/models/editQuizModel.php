<?php

class EditQuizModel extends Database
{
    public function getQuizQuestionsSummary($quizId)
    {
        $query = "SELECT quiz_question.question_no, question, question_type, COUNT(choice_id) AS count FROM quiz_question INNER JOIN question_choice ON quiz_question.question_no=question_choice.question_no WHERE quiz_question.quiz_id='$quizId' GROUP BY quiz_question.question_no ORDER BY quiz_question.question_no";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function getQuizQuestionChoices($quizId)
    {
        $query = "SELECT choice_id, choice_name, points FROM question_choice WHERE quiz_id='$quizId' ORDER BY question_no, choice_id;";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function updateQuestion($questionId, $question, $questionType)
    {
        $query = "UPDATE quiz_question
        SET question='$question', question_type='$questionType'
        WHERE question_no='$questionId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function updateChoice($choiceId, $choice, $points)
    {
        $query = "UPDATE question_choice
        SET choice_name='$choice', points='$points'
        WHERE choice_id='$choiceId'";

        mysqli_query($GLOBALS["db"], $query);
    }
}
