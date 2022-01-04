<?php

class TagsModel extends Database
{
    public function getTagNames($userId)
    {
        $query = "SELECT tag_id, tag_name FROM tag WHERE student_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getTopicDiscussionDetails($userId, $topicSearchValues, $topicSubjectValues, $replySearchValues)
    {
        $query = "SELECT DISTINCT forum_topic.topic_id, subject, DATE_FORMAT(forum_topic.post_time, '%d %M %Y') AS post_time, 
        CONCAT(first_name, ' ', last_name) AS name, forum_topic.random_status, CONCAT(random_first_name, ' ', random_last_name) AS random_name, user.user_id, user_type
        FROM forum_topic
        LEFT JOIN forum_reply ON forum_topic.topic_id=forum_reply.topic_id 
        INNER JOIN user ON forum_topic.user_id=user.user_id
        LEFT JOIN student ON student.user_id=user.user_id
        WHERE forum_Id IN(SELECT DISTINCT forum_id FROM course_registration_stu INNER JOIN forum ON course_registration_stu.course_Id=forum.course_Id WHERE student_id='$userId') AND (
        $topicSearchValues OR
        $topicSubjectValues OR
        $replySearchValues)
        ORDER BY updated_time DESC";

        // echo $query;

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getReplyDiscussionDetails($userId, $topicSearchValues, $topicSubjectValues, $replySearchValues)
    {
        $query = "SELECT CONCAT(first_name, ' ', last_name) AS name, forum_reply.random_status, CONCAT(random_first_name, ' ', random_last_name) AS random_name, DATE_FORMAT(forum_reply.post_time, '%d %M %Y') AS post_time, user.user_id, user_type
        FROM forum_topic
        LEFT JOIN forum_reply ON forum_topic.last_reply_id=forum_reply.reply_id
        LEFT JOIN user ON user.user_id=forum_reply.user_id
        LEFT JOIN student ON student.user_id=user.user_id
        WHERE forum_Id IN(SELECT DISTINCT forum_id FROM course_registration_stu INNER JOIN forum ON course_registration_stu.course_Id=forum.course_Id WHERE student_id='$userId') AND (
        $topicSearchValues OR
        $topicSubjectValues OR
        $replySearchValues)
        ORDER BY updated_time DESC";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function createTag($userId, $tagName)
    {
        $query = "INSERT INTO tag(tag_name, student_id) VALUES('$tagName', '$userId')";
        mysqli_query($GLOBALS["db"], $query);
    }

    public function deleteTag($tagId)
    {
        $query = "DELETE FROM tag WHERE tag_id='$tagId'";
        mysqli_query($GLOBALS["db"], $query);
    }

    public function validateTagName($userId, $tagName)
    {
        $query = "SELECT * FROM tag WHERE tag_name='$tagName' AND student_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) === 0) {
            return "1";
        } else {
            return "0";
        }
    }

    public function searchTopicDiscussionDetails($userId, $searchValue)
    {
        $query = "SELECT DISTINCT forum_topic.topic_id, subject, DATE_FORMAT(forum_topic.post_time, '%d %M %Y') AS post_time, 
        CONCAT(first_name, ' ', last_name) AS name, forum_topic.random_status, CONCAT(random_first_name, ' ', random_last_name) AS random_name, user.user_id, user_type
        FROM forum_topic
        LEFT JOIN forum_reply ON forum_topic.topic_id=forum_reply.topic_id 
        INNER JOIN user ON forum_topic.user_id=user.user_id
        LEFT JOIN student ON student.user_id=user.user_id
        WHERE forum_Id IN(SELECT DISTINCT forum_id FROM course_registration_stu INNER JOIN forum ON course_registration_stu.course_Id=forum.course_Id WHERE student_id='$userId') AND (
        question LIKE $searchValue OR
        subject LIKE $searchValue OR
        reply LIKE $searchValue)
        ORDER BY updated_time DESC";

        // echo $query;

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function searchReplyDiscussionDetails($userId, $searchValue)
    {
        $query = "SELECT CONCAT(first_name, ' ', last_name) AS name, forum_reply.random_status, CONCAT(random_first_name, ' ', random_last_name) AS random_name, DATE_FORMAT(forum_reply.post_time, '%d %M %Y') AS post_time, user.user_id, user_type
        FROM forum_topic
        LEFT JOIN forum_reply ON forum_topic.last_reply_id=forum_reply.reply_id
        LEFT JOIN user ON user.user_id=forum_reply.user_id
        LEFT JOIN student ON student.user_id=user.user_id
        WHERE forum_Id IN(SELECT DISTINCT forum_id FROM course_registration_stu INNER JOIN forum ON course_registration_stu.course_Id=forum.course_Id WHERE student_id='$userId') AND (
        question LIKE $searchValue OR
        subject LIKE $searchValue OR
        reply LIKE $searchValue)
        ORDER BY updated_time DESC";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getTagDetails($tagId)
    {
        $query = "SELECT tag_id, tag_name FROM tag WHERE tag_id='$tagId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getTopicDiscussionDetailsSingleTag($userId, $tagName)
    {
        $questionSearchValues = " question LIKE '%" . $tagName . "%'";
        $subjectSearchValues = " subject LIKE '%" . $tagName . "%'";
        $replySearchValues = " reply LIKE '%" . $tagName . "%'";

        $query = "SELECT DISTINCT forum_topic.topic_id, subject, DATE_FORMAT(forum_topic.post_time, '%d %M %Y') AS post_time, 
        CONCAT(first_name, ' ', last_name) AS name, forum_topic.random_status, CONCAT(random_first_name, ' ', random_last_name) AS random_name, user.user_id, user_type, forum_name AS course_name
        FROM forum_topic
        LEFT JOIN forum_reply ON forum_topic.topic_id=forum_reply.topic_id 
        INNER JOIN user ON forum_topic.user_id=user.user_id
        LEFT JOIN student ON student.user_id=user.user_id
        INNER JOIN forum ON forum_topic.forum_Id=forum.forum_Id
        WHERE forum_topic.forum_Id IN(SELECT DISTINCT forum_id FROM course_registration_stu INNER JOIN forum ON course_registration_stu.course_Id=forum.course_Id WHERE student_id='$userId') AND (
        $questionSearchValues OR
        $subjectSearchValues OR
        $replySearchValues)
        ORDER BY updated_time DESC";

        // echo $query;

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
