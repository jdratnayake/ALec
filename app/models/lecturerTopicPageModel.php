<?php

class LecturerTopicPageModel extends Database
{
    public function getCourseDetails($courseId)
    {
        $query = "SELECT course_name, course_description FROM course WHERE course_id='$courseId' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getTopicDetails($courseId)
    {
        $query = "SELECT topic_id, topic_name FROM course_topic WHERE course_id='$courseId' ORDER BY topic_id";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getQuizCount($courseId)
    {
        $query = "SELECT course_topic.topic_id, COUNT(quiz_id) AS count FROM course_topic LEFT JOIN quiz ON course_topic.topic_id=quiz.topic_id WHERE course_id='$courseId' GROUP BY course_topic.topic_id ORDER BY course_topic.topic_id";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getQuizDetails($courseId)
    {
        $query = "SELECT quiz_id, quiz_name FROM course_topic INNER JOIN quiz ON course_topic.topic_id=quiz.topic_id WHERE course_id='$courseId' ORDER BY course_topic.topic_id, create_date";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
