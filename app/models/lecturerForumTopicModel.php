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

        $output = mysqli_fetch_assoc($result)["topic_id"];

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
            $query = "INSERT INTO forum_topic_points(lecturer_id, topic_id) VALUES('$userId', '$topicId')";
        }

        mysqli_query($GLOBALS["db"], $query);
    }
}
