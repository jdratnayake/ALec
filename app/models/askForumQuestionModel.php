<?php

class askForumQuestionModel extends Database
{
    public function getSubjectCode($forumId)
    {
        $query = "SELECT course_name FROM course INNER JOIN forum ON course.course_Id=forum.course_Id
                    WHERE forum_id='$forumId'";

        $result = mysqli_query($GLOBALS["db"], $query);
        $name = mysqli_fetch_assoc($result)["course_name"];
        $code = explode("-", $name)[0];
        return $code;
    }

    public function addTopicDetails($subject, $question, $forumId, $userId, $randomStatus)
    {
        $subject = mysqli_real_escape_string($GLOBALS["db"], $subject);
        $question = mysqli_real_escape_string($GLOBALS["db"], $question);

        $query = "INSERT INTO forum_topic(subject, question, post_time, forum_Id, user_id, random_status, updated_time) VALUES
                    ('$subject', '$question', NOW(), '$forumId', '$userId', '$randomStatus', NOW())";
        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT topic_id, post_time FROM forum_topic ORDER BY topic_id DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getCourseId($forumId)
    {
        $query = "SELECT course_Id FROM forum WHERE forum_id='$forumId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);
        return mysqli_fetch_assoc($result)["course_Id"];
    }
}
