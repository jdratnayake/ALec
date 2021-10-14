<?php

class PreviewQuizModel extends Database
{
    public function getCourseName($quizId)
    {
        $query = "SELECT course.course_name FROM course INNER JOIN course_topic ON course.course_id=course_topic.course_id INNER JOIN quiz ON quiz.topic_id=course_topic.topic_id WHERE quiz_id='$quizId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["course_name"];
    }

    public function getQuizDetails($quizId)
    {
        $query = "SELECT quiz_id, quiz_name, HOUR(duration) AS hr, MINUTE(duration) AS min, SECOND(duration) AS sec FROM quiz WHERE quiz_id='$quizId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getQuizQuestionsSummary($quizId)
    {
        $query = "SELECT quiz_question.question_no, question, COUNT(choice_id) AS count FROM quiz_question INNER JOIN question_choice ON quiz_question.question_no=question_choice.question_no WHERE quiz_question.quiz_id='$quizId' GROUP BY quiz_question.question_no ORDER BY quiz_question.question_no";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function getQuizQuestionChoices($quizId)
    {
        $query = "SELECT choice_id, choice_name, points FROM question_choice WHERE quiz_id='$quizId' ORDER BY question_no, choice_id;";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function updateDateTimeQuiz($quizId, $publishDateTime, $closeDateTime, $duration)
    {
        $publishDateTime = mysqli_real_escape_string($GLOBALS["db"], $publishDateTime);
        $closeDateTime = mysqli_real_escape_string($GLOBALS["db"], $closeDateTime);
        $duration = mysqli_real_escape_string($GLOBALS["db"], $duration);

        $query = "UPDATE quiz SET published_date='$publishDateTime', close_date='$closeDateTime', 
        duration='$duration', status='publish' WHERE quiz_id='$quizId'";

        mysqli_query($GLOBALS["db"], $query);
    }
}
