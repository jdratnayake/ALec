<?php

class StudentForumTopicModel extends Database
{
    public function getForumDetails($courseId)
    {
        $query = "SELECT * FROM forum WHERE course_Id='$courseId' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getTopicDiscussionDetails($forumId)
    {
        $query = "SELECT topic_id, subject, DATE_FORMAT(post_time, '%d %M %Y') AS post_time, 
        CONCAT(first_name, ' ', last_name) AS name, random_status, CONCAT(random_first_name, ' ', random_last_name) AS random_name, user.user_id, user_type, points
        FROM forum_topic 
        INNER JOIN user ON forum_topic.user_id=user.user_id
        LEFT JOIN student ON student.user_id=user.user_id
        WHERE forum_Id='$forumId'
        ORDER BY updated_time DESC";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getReplyDiscussionDetails($forumId)
    {
        $query = "SELECT CONCAT(first_name, ' ', last_name) AS name, forum_reply.random_status, CONCAT(random_first_name, ' ', random_last_name) AS random_name, DATE_FORMAT(forum_reply.post_time, '%d %M %Y') AS post_time, user.user_id, user_type
        FROM forum_topic
        LEFT JOIN forum_reply ON forum_topic.last_reply_id=forum_reply.reply_id
        LEFT JOIN user ON user.user_id=forum_reply.user_id
        LEFT JOIN student ON student.user_id=user.user_id
        WHERE forum_Id='$forumId'
        ORDER BY updated_time DESC";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
