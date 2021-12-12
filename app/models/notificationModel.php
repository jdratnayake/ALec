<?php

class NotificationModel extends Database
{
    public function getNotificationCount($userId)
    {
        $query = "SELECT COUNT(notification_id) AS count FROM notification_user WHERE user_id='$userId' AND notification_status='F'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["count"];
    }

    public function getNotificationDetails($userId, $isToday)
    {
        if ($isToday === "1") {
            $query = "SELECT * FROM notification_user INNER JOIN notification ON notification_user.notification_id=notification.notification_id WHERE user_id='$userId' AND DATE(date)=DATE(NOW())";
        } else if ($isToday === "0") {
            $query = "SELECT * FROM notification_user INNER JOIN notification ON notification_user.notification_id=notification.notification_id WHERE user_id='$userId' AND DATE(date)<>DATE(NOW())";
        }

        $results = mysqli_query($GLOBALS["db"], $query);

        return $results;
    }

    public function updateUserNotification($userId, $notificationId)
    {
        $query = "UPDATE notification_user SET notification_status='T' WHERE user_id='$userId' AND notification_id='$notificationId'";

        mysqli_query($GLOBALS["db"], $query);
    }
}
