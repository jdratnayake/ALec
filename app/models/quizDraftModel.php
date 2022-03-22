<?php

class QuizDraftModel extends Database
{
    public function getEnrolledCourses($userId)
    {
        $query = "SELECT course.course_id, course_name FROM course INNER JOIN course_registration_lec ON course.course_id=course_registration_lec.course_id WHERE lecturer_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getTopics($courseId)
    {
        $query = "SELECT topic_id, topic_name FROM course_topic WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getDraftedQuizzes($courseId, $topicId)
    {
        if ($topicId == "0") {
            $query = "SELECT quiz_id, quiz_name, DATE_FORMAT(create_date, '%M %d %Y') AS date FROM quiz INNER JOIN course_topic ON quiz.topic_id=course_topic.topic_id WHERE status='draft' AND course_id='$courseId'";
        } else {
            $query = "SELECT quiz_id, quiz_name, DATE_FORMAT(create_date, '%M %d %Y') AS date FROM quiz INNER JOIN course_topic ON quiz.topic_id=course_topic.topic_id WHERE status='draft' AND course_id='$courseId' AND course_topic.topic_id='$topicId'";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
