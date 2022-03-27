<?php

class AttemptQuizViewModel extends Database
{
    // Insert question attempt
    public function insertAttempt($userId, $quizId)
    {
        $query = "INSERT INTO quiz_attempt(student_id, quiz_id, attempt_time) VALUES('$userId', '$quizId', NOW())";
        mysqli_query($GLOBALS["db"], $query);
    }

    // Return quiz details
    public function getQuizDetails($quizId)
    {
        $query = "SELECT quiz_id, quiz_name, HOUR(duration) AS hr, MINUTE(duration) AS min, SECOND(duration) AS sec, course_name FROM quiz INNER JOIN course_topic ON quiz.topic_id=course_topic.topic_id INNER JOIN course ON course_topic.course_id=course.course_id WHERE quiz_id='$quizId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    // Return quiz question details with choice count
    public function getQuizQuestionsSummary($quizId)
    {
        $query = "SELECT quiz_question.question_no, question, COUNT(choice_id) AS count, question_type FROM quiz_question INNER JOIN question_choice ON quiz_question.question_no=question_choice.question_no WHERE quiz_question.quiz_id='$quizId' GROUP BY quiz_question.question_no ORDER BY quiz_question.question_no";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    // Return quiz question choices
    public function getQuizQuestionChoices($quizId)
    {
        $query = "SELECT choice_id, choice_name, points FROM question_choice WHERE quiz_id='$quizId' ORDER BY question_no, choice_id;";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    // Return closing time of the attempted student
    public function getClosingTime($userId, $quizId)
    {
        $query = "SELECT ADDTIME(attempt_time, duration) AS calTime, close_date FROM quiz_attempt INNER JOIN quiz ON quiz_attempt.quiz_id=quiz.quiz_id WHERE quiz.quiz_id='$quizId' AND student_id='$userId';";
        $result = mysqli_query($GLOBALS["db"], $query);
        $row = mysqli_fetch_assoc($result);

        $time = $row["calTime"];
        $closeTime = $row["close_date"];

        if ($time > $closeTime) {
            return date("Y/m/d H:i:s", strtotime($closeTime));
        } else {
            return date("Y/m/d H:i:s", strtotime($time));
        }
    }

    // Check quiz expire time
    public function quizExpireCheck($quizId)
    {
        $query = "SELECT * FROM quiz WHERE quiz_id='$quizId' AND NOW() >= published_date AND NOW() < close_date";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) == 1) {
            return true;
        } else {
            return false;
        }
    }

    // Check quiz attempt check
    public function quizAttemptCheck($userId, $quizId)
    {
        $query = "SELECT * FROM quiz_attempt WHERE student_id='$userId' AND quiz_id='$quizId' AND marks='-1'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) == 1) {
            return true;
        } else {
            return false;
        }
    }
}
