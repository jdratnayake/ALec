<?php

class EditQuizModel extends Database
{
    // Return course details
    public function getCourseDetails($quizId)
    {
        $query = "SELECT course.course_id, course_name FROM course INNER JOIN course_topic ON course.course_id=course_topic.course_id INNER JOIN quiz ON quiz.topic_id=course_topic.topic_id WHERE quiz_id='$quizId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    // Return quiz question details with answer count
    public function getQuizQuestionsSummary($quizId)
    {
        $query = "SELECT quiz_question.question_no, question, question_type, COUNT(choice_id) AS count FROM quiz_question INNER JOIN question_choice ON quiz_question.question_no=question_choice.question_no WHERE quiz_question.quiz_id='$quizId' GROUP BY quiz_question.question_no ORDER BY quiz_question.question_no";

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

    // Update quiz question
    public function updateQuestion($questionId, $question, $questionType)
    {
        $query = "UPDATE quiz_question
        SET question='$question', question_type='$questionType'
        WHERE question_no='$questionId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    // Update quiz question choice
    public function updateChoice($choiceId, $choice, $points)
    {
        $query = "UPDATE question_choice
        SET choice_name='$choice', points='$points'
        WHERE choice_id='$choiceId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    // Insert a new quiz question
    public function insertQuizQuestion($quizId, $question, $questionType)
    {
        $quizId = mysqli_real_escape_string($GLOBALS["db"], $quizId);
        $question = mysqli_real_escape_string($GLOBALS["db"], $question);
        $questionType = mysqli_real_escape_string($GLOBALS["db"], $questionType);
        $successRate = "0";

        $query = "INSERT INTO quiz_question(question_no, quiz_id, question, question_type, success_rate) VALUES (NULL, '$quizId', '$question', '$questionType', '$successRate')";

        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT question_no FROM quiz_question ORDER BY question_no DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["question_no"];
    }

    // Insert choices of the new quiz question
    public function insertChoice($questionId, $quizId, $choice, $points)
    {
        $questionId = mysqli_real_escape_string($GLOBALS["db"], $questionId);
        $quizId = mysqli_real_escape_string($GLOBALS["db"], $quizId);
        $choice = mysqli_real_escape_string($GLOBALS["db"], $choice);
        $points = mysqli_real_escape_string($GLOBALS["db"], $points);

        $query = "INSERT INTO question_choice (choice_id, question_no, quiz_id, choice_name, points) VALUES 
        (NULL, '$questionId', '$quizId', '$choice', '$points')";

        mysqli_query($GLOBALS["db"], $query);
    }

    // Delete pre exist question
    public function deleteQuestion($questionId)
    {
        $query = "DELETE FROM quiz_question WHERE question_no='$questionId'";
        mysqli_query($GLOBALS["db"], $query);
    }

    // Delete pre exist answer
    public function deleteAnswer($choiceId)
    {
        $query = "DELETE FROM question_choice WHERE choice_id='$choiceId'";
        mysqli_query($GLOBALS["db"], $query);
    }

    //Update quiz status [Update drafted quizzes]
    public function updateQuizStatus($quizId)
    {
        $query = "UPDATE quiz SET status='create' WHERE quiz_id='$quizId'";
        mysqli_query($GLOBALS["db"], $query);
    }
}
