<?php

class NotificationModel extends Database
{
    public function getNotificationCount($userId)
    {
        $query = "SELECT COUNT(notification_id) AS count FROM notification_user WHERE user_id='$userId' AND notification_status='F'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["count"];
    }
}
