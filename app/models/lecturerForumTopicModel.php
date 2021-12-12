<?php

class LecturerForumTopicModel extends Database
{
    public function getForumDetails($courseId)
    {
        $query = "SELECT * FROM forum WHERE course_Id='$courseId' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getTopicDiscussionDetails($forumId)
    {
        $query = "SELECT topic_id, subject, points, DATE_FORMAT(post_time, '%d %M %Y') AS post_time, CONCAT(first_name, ' ', last_name) AS name, user_type FROM forum_topic INNER JOIN user ON forum_topic.user_id=user.user_id WHERE forum_Id='$forumId' GROUP BY updated_time DESC";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getReplyDiscussionDetails($forumId)
    {
        $query = "SELECT CONCAT(first_name, ' ', last_name) AS name, DATE_FORMAT(forum_reply.post_time, '%d %M %Y') AS post_time
        FROM forum_topic
        LEFT JOIN forum_reply ON forum_topic.last_reply_id=forum_reply.reply_id
        LEFT JOIN user ON user.user_id=forum_reply.user_id
        WHERE forum_Id='$forumId'
        GROUP BY updated_time DESC";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getPointsGivenTopics($userId, $forumId)
    {
        $query = "SELECT DISTINCT topic_id FROM forum_topic_points WHERE lecturer_id='$userId' AND topic_id IN(SELECT DISTINCT topic_id FROM forum_topic WHERE forum_Id='$forumId')";
        $result = mysqli_query($GLOBALS["db"], $query);

        $output = "";

        while ($row = mysqli_fetch_assoc($result)) {
            $output = $output . " " . $row["topic_id"];
        }

        return $output;
    }

    // 0 = remove marks
    // 1 = add marks
    public function changeMarksTopic($userId, $topicId, $signal)
    {
        if ($signal == "0") {
            $query = "DELETE FROM forum_topic_points WHERE lecturer_id='$userId' AND topic_id='$topicId'";
        } else if ($signal == "1") {
            $query = "INSERT INTO forum_topic_points(lecturer_id, topic_id, time) VALUES('$userId', '$topicId', NOW())";
        }

        mysqli_query($GLOBALS["db"], $query);
    }

    public function getMarksGivenTime($userId, $topicId)
    {
        $query = "SELECT time FROM forum_topic_points WHERE lecturer_id='$userId' AND topic_id='$topicId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["time"];
    }

    public function setForumTopicNotificationStudentSingle($courseName, $studentLink, $postTime, $topicId, $message)
    {
        $query = "INSERT INTO notification(notification_type, subject, description, url, date) VALUES('1', '$message', '$courseName', '$studentLink', '$postTime')";
        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT notification_id FROM notification ORDER BY notification_id DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);
        $notificationId = mysqli_fetch_assoc($result)["notification_id"];

        $query = "SELECT user_id FROM forum_topic WHERE topic_id='$topicId'";
        $result = mysqli_query($GLOBALS["db"], $query);


        $userId = mysqli_fetch_assoc($result)["user_id"];
        $query = "INSERT INTO notification_user(user_id, notification_id) VALUES('$userId', '$notificationId')";
        mysqli_query($GLOBALS["db"], $query);
    }
}
