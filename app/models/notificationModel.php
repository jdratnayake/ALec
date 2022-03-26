<?php

// SELECT notification.notification_id, notification_type, subject, description, url, 
// CONCAT(
//     FLOOR(TIMESTAMPDIFF(SECOND, date, NOW()) / 3600 / 24), ' days ',
//     FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600 * 24) / 3600), ' hours ',
//     FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600) / 60), ' minutes ',
//     MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 60), ' seconds'
//   ) AS difference
// FROM notification_user INNER JOIN notification ON notification_user.notification_id=notification.notification_id WHERE user_id='1497'

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
            $query = "SELECT notification.notification_id, notification_type, subject, description, url, CONCAT( FLOOR(TIMESTAMPDIFF(SECOND, date, NOW()) / 3600 / 24), 'd ', FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600 * 24) / 3600), 'h ', FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600) / 60), 'min ' ) AS difference, notification_status FROM notification_user INNER JOIN notification ON notification_user.notification_id=notification.notification_id WHERE user_id='$userId' AND DATE(date)=DATE(NOW()) ORDER BY date DESC";
        } else if ($isToday === "0") {
            $query = "SELECT notification.notification_id, notification_type, subject, description, url, CONCAT( FLOOR(TIMESTAMPDIFF(SECOND, date, NOW()) / 3600 / 24), 'd ', FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600 * 24) / 3600), 'h ', FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600) / 60), 'min ' ) AS difference, notification_status FROM notification_user INNER JOIN notification ON notification_user.notification_id=notification.notification_id WHERE user_id='$userId' AND DATE(date)<>DATE(NOW()) ORDER BY date DESC";
        }

        $results = mysqli_query($GLOBALS["db"], $query);

        return $results;
    }

    public function getUnreadNotificationDetails($userId, $isToday)
    {
        if ($isToday === "1") {
            $query = "SELECT notification.notification_id, notification_type, subject, description, url, CONCAT( FLOOR(TIMESTAMPDIFF(SECOND, date, NOW()) / 3600 / 24), 'd ', FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600 * 24) / 3600), 'h ', FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600) / 60), 'min ' ) AS difference, notification_status FROM notification_user INNER JOIN notification ON notification_user.notification_id=notification.notification_id WHERE user_id='$userId' AND DATE(date)=DATE(NOW()) AND notification_status='F' ORDER BY date DESC";
        } else if ($isToday === "0") {
            $query = "SELECT notification.notification_id, notification_type, subject, description, url, CONCAT( FLOOR(TIMESTAMPDIFF(SECOND, date, NOW()) / 3600 / 24), 'd ', FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600 * 24) / 3600), 'h ', FLOOR(MOD(TIMESTAMPDIFF(SECOND, date, NOW()), 3600) / 60), 'min ' ) AS difference, notification_status FROM notification_user INNER JOIN notification ON notification_user.notification_id=notification.notification_id WHERE user_id='$userId' AND DATE(date)<>DATE(NOW()) AND notification_status='F' ORDER BY date DESC";
        }

        $results = mysqli_query($GLOBALS["db"], $query);

        return $results;
    }

    public function updateUserNotification($userId, $notificationId)
    {
        $query = "UPDATE notification_user SET notification_status='T' WHERE user_id='$userId' AND notification_id='$notificationId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function getUserDetails($userId)
    {
        $query = "SELECT CONCAT(first_name, ' ', last_name) AS name, img FROM user WHERE user_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }
}
