<?php

class LecturerTopicPageModel extends Database
{
    // Return course details
    public function getCourseDetails($courseId)
    {
        $query = "SELECT course_name, course_description FROM course WHERE course_id='$courseId' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    // Return topic details
    public function getTopicDetails($courseId)
    {
        $query = "SELECT topic_id, topic_name FROM course_topic WHERE course_id='$courseId' ORDER BY topic_id";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    // Return quiz count of each topic
    public function getQuizCount($courseId)
    {
        $query = "SELECT course_topic.topic_id, COUNT(quiz_id) AS count FROM course_topic LEFT JOIN quiz ON course_topic.topic_id=quiz.topic_id AND status<>'draft' WHERE course_id='$courseId' GROUP BY course_topic.topic_id ORDER BY course_topic.topic_id";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    // Return sorted quiz details according to the topic id and create date
    public function getQuizDetails($courseId)
    {
        $query = "SELECT quiz_id, quiz_name FROM course_topic INNER JOIN quiz ON course_topic.topic_id=quiz.topic_id WHERE course_id='$courseId' AND status<>'draft' ORDER BY course_topic.topic_id, create_date";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    // Return course id by using topic id
    public function getCourseId($topicId)
    {
        $query = "SELECT course_id FROM course_topic WHERE topic_id='$topicId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["course_id"];
    }

    // Delete a topic
    public function deleteTopic($topicId)
    {
        $query = "DELETE FROM course_topic WHERE topic_id='$topicId'";
        mysqli_query($GLOBALS["db"], $query);
    }

    // Edit a topic
    public function editTopic($topicId, $topicName)
    {
        $query = "UPDATE course_topic SET topic_name='$topicName' WHERE topic_id='$topicId'";
        mysqli_query($GLOBALS["db"], $query);
    }
}
