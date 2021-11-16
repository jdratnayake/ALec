<?php

class AttemptQuizModel extends Database
{
    public function getQuizDetails($quizId)
    {
        $query = "SELECT quiz_id, quiz_name, HOUR(duration) AS hr, MINUTE(duration) AS min, SECOND(duration) AS sec, course_name FROM quiz INNER JOIN course_topic ON quiz.topic_id=course_topic.topic_id INNER JOIN course ON course_topic.course_id=course.course_id WHERE quiz_id='$quizId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getQuizQuestionsSummary($quizId)
    {
        $query = "SELECT quiz_question.question_no, question, COUNT(choice_id) AS count, question_type FROM quiz_question INNER JOIN question_choice ON quiz_question.question_no=question_choice.question_no WHERE quiz_question.quiz_id='$quizId' GROUP BY quiz_question.question_no ORDER BY quiz_question.question_no";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function getQuizQuestionChoices($quizId)
    {
        $query = "SELECT choice_id, choice_name, points FROM question_choice WHERE quiz_id='$quizId' ORDER BY question_no, choice_id;";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }
}
