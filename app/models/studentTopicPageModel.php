<?php

class studentTopicPageModel extends Database
{
    public function getQuizCount($courseId, $userId)
    {
        $query = "SELECT course_topic.topic_id, COUNT(quiz_id) AS count FROM course_topic LEFT JOIN quiz ON course_topic.topic_id=quiz.topic_id AND quiz_id IN(SELECT quiz_id FROM quiz_attempt WHERE student_id='$userId') WHERE course_id='$courseId' GROUP BY course_topic.topic_id ORDER BY course_topic.topic_id";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getQuizDetails($courseId, $userId)
    {
        $query = "SELECT quiz_id, quiz_name FROM course_topic INNER JOIN quiz ON course_topic.topic_id=quiz.topic_id WHERE course_id='$courseId' AND quiz_id IN(SELECT quiz_id FROM quiz_attempt WHERE student_id='$userId') ORDER BY course_topic.topic_id, create_date";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
