<?php

class createQuizDashboardModel extends Database
{
    public function getCourseDetails($userId)
    {
        $query = "SELECT course.course_id, course_name FROM course INNER JOIN course_registration_lec ON
                course.course_id=course_registration_lec.course_id WHERE lecturer_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getTopicDetails($courseId)
    {
        $query = "SELECT topic_id, topic_name FROM course_topic WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        $output = '<option value="null" selected>Select your topic</option>';

        while ($row = mysqli_fetch_assoc($result)) {
            $output .= "<option value={$row['topic_id']}>{$row['topic_name']}</option>";
        }

        return $output;
    }

    public function insertQuizData($quizName, $status, $durHr, $durMin, $lecturerId, $topicId)
    {
        $quizName = mysqli_real_escape_string($GLOBALS["db"], $quizName);
        $status = mysqli_real_escape_string($GLOBALS["db"], $status);
        $durHr = mysqli_real_escape_string($GLOBALS["db"], $durHr);
        $durMin = mysqli_real_escape_string($GLOBALS["db"], $durMin);
        $lecturerId = mysqli_real_escape_string($GLOBALS["db"], $lecturerId);
        $topicId = mysqli_real_escape_string($GLOBALS["db"], $topicId);

        $dur = "{$durHr}:{$durMin}:00";

        $query = "INSERT INTO quiz(quiz_id, quiz_name, status, create_date, published_date, close_date, duration, lecturer_id, topic_id) VALUES (NULL, '$quizName', '$status', NOW(), NULL, NULL, '$dur', '$lecturerId', '$topicId');";

        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT quiz_id FROM quiz ORDER BY quiz_id DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["quiz_id"];
    }

    public function insertQuizQuestion($no, $quizId, $question, $questionType)
    {
        $no = mysqli_real_escape_string($GLOBALS["db"], $no);
        $quizId = mysqli_real_escape_string($GLOBALS["db"], $quizId);
        $question = mysqli_real_escape_string($GLOBALS["db"], $question);
        $questionType = mysqli_real_escape_string($GLOBALS["db"], $questionType);
        $successRate = "0";

        $query = "INSERT INTO quiz_question(question_no, quiz_id, question, question_type, success_rate) VALUES ('$no', '$quizId', '$question', '$questionType', '$successRate')";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function insertChoice($choiceNo, $questionNo, $quizId, $choice, $points)
    {
        $choiceNo = mysqli_real_escape_string($GLOBALS["db"], $choiceNo);
        $questionNo = mysqli_real_escape_string($GLOBALS["db"], $questionNo);
        $quizId = mysqli_real_escape_string($GLOBALS["db"], $quizId);
        $choice = mysqli_real_escape_string($GLOBALS["db"], $choice);
        $points = mysqli_real_escape_string($GLOBALS["db"], $points);

        $query = "INSERT INTO question_choice (choice_id, question_no, quiz_id, choice_name, points) VALUES 
        ('$choiceNo', '$questionNo', '$quizId', '$choice', '$points')";

        mysqli_query($GLOBALS["db"], $query);
    }
}
