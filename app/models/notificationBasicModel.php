<?php

class NotificationBasicModel extends Database
{
    public function getStudentRandomName($userId)
    {
        $query = "SELECT CONCAT(random_first_name, ' ', random_last_name) AS name FROM student WHERE user_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["name"];
    }

    public function getUserRealName($userId)
    {
        $query = "SELECT CONCAT(first_name, ' ', last_name) AS name FROM user WHERE user_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["name"];
    }

    public function getCourseName($courseId)
    {
        $query = "SELECT course_name FROM course WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["course_name"];
    }

    public function getCourseId($topicId)
    {
        $query = "SELECT course_id FROM forum_topic INNER JOIN forum ON forum_topic.forum_Id=forum.forum_Id WHERE topic_id='$topicId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["course_id"];
    }

    public function setForumTopicNotificationStudent($courseName, $studentLink, $postTime, $courseId, $message)
    {
        $query = "INSERT INTO notification(notification_type, subject, description, url, date) VALUES('1', '$message', '$courseName', '$studentLink', '$postTime')";
        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT notification_id FROM notification ORDER BY notification_id DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);
        $notificationId = mysqli_fetch_assoc($result)["notification_id"];

        $query = "SELECT DISTINCT student_id FROM course_registration_stu WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        while ($row = mysqli_fetch_assoc($result)) {
            $userId = $row["student_id"];
            $query = "INSERT INTO notification_user(user_id, notification_id) VALUES('$userId', '$notificationId')";
            mysqli_query($GLOBALS["db"], $query);
        }
    }

    public function setForumTopicNotificationLecturer($courseName, $lecturerLink, $postTime, $courseId, $message)
    {
        $query = "INSERT INTO notification(notification_type, subject, description, url, date) VALUES('1', '$message', '$courseName', '$lecturerLink', '$postTime')";
        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT notification_id FROM notification ORDER BY notification_id DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);
        $notificationId = mysqli_fetch_assoc($result)["notification_id"];

        $query = "SELECT DISTINCT lecturer_id FROM course_registration_lec WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        while ($row = mysqli_fetch_assoc($result)) {
            $userId = $row["lecturer_id"];
            $query = "INSERT INTO notification_user(user_id, notification_id) VALUES('$userId', '$notificationId')";
            mysqli_query($GLOBALS["db"], $query);
        }
    }
}
