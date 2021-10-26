<?php

class StudentForumTopicDiscussionModel extends Database
{
    public function getForumDetails($topicId)
    {
        $query = "SELECT forum.forum_id, forum_name, course_Id FROM forum_topic INNER JOIN forum ON forum_topic.forum_Id=forum.forum_id WHERE topic_id='$topicId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getTopicDetails($topicId)
    {
        $query = "SELECT topic_id, subject, question, DATE_FORMAT(post_time, '%d %M %Y') AS post_time, forum_topic.user_id, CONCAT(first_name, ' ', last_name) AS name, user_type FROM forum_topic INNER JOIN user ON forum_topic.user_id=user.user_id WHERE topic_id='$topicId' LIMIT 1";

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getUserDetails($userId)
    {
        $query = "SELECT user_id, CONCAT(first_name, ' ', last_name) AS name, DATE_FORMAT(NOW(), '%d %M %Y') AS date, img FROM user WHERE user_id='$userId' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getReplyDetails($topicId)
    {
        $query = "SELECT reply_id, reply, DATE_FORMAT(post_time, '%d %M %Y') AS post_time, user.user_id, CONCAT(first_name, ' ', last_name) AS name, user_type, img FROM forum_reply INNER JOIN user ON forum_reply.user_id=user.user_id WHERE topic_id='$topicId' GROUP BY post_time";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function insertReply($topicId, $reply, $userId)
    {
        $topicId = mysqli_real_escape_string($GLOBALS["db"], $topicId);
        $reply = mysqli_real_escape_string($GLOBALS["db"], $reply);
        $userId = mysqli_real_escape_string($GLOBALS["db"], $userId);

        $query = "INSERT INTO forum_reply(topic_id, reply, post_time, user_id) VALUES('$topicId', '$reply', NOW(), '$userId')";
        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT reply_id FROM forum_reply GROUP BY reply_id DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);
        $replyId = mysqli_fetch_assoc($result)["reply_id"];

        $query = "UPDATE forum_topic SET last_reply_id='$replyId', updated_time=NOW() WHERE topic_id='$topicId'";
        mysqli_query($GLOBALS["db"], $query);
    }

    public function deleteTopic($topicId)
    {
        $query = "SELECT course_Id FROM forum_topic INNER JOIN forum ON forum_topic.forum_Id=forum.forum_Id WHERE topic_id='$topicId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        $query = "DELETE FROM forum_topic WHERE topic_id='$topicId'";
        mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["course_Id"];
    }

    public function deleteReply($replyId)
    {
        $query = "SELECT topic_id FROM forum_reply WHERE reply_id='$replyId' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        $query = "DELETE FROM forum_reply WHERE reply_id='$replyId'";
        mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["topic_id"];
    }
}
