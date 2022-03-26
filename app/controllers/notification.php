<?php

class Notification extends AlecFramework
{
    public function __construct()
    {
        //Do not use authorization function here (Do not work when logout)
        //$this->authorization("admin", "lec", "stu");
        $this->helper("linker");
        $this->notificationModel = $this->model("notificationModel");
    }

    public function readNotification($notificationId)
    {
        $userId = $this->getSession("userId");

        $this->notificationModel->updateUserNotification($userId, $notificationId);
    }

    public function notificationCount()
    {
        $userId = $this->getSession("userId");

        //Determine Logout
        if (!isset($userId)) {
            echo "-1";
        } else {
            echo $this->notificationModel->getNotificationCount($userId);
        }
    }

    public function updateNotification()
    {
        $userId = $this->getSession("userId");

        $todayNotification = $this->notificationModel->getNotificationDetails($userId, "1");
        $oldNotification = $this->notificationModel->getNotificationDetails($userId, "0");

        $output = $this->getNotificationTags($todayNotification, "1");
        $output .= $this->getNotificationTags($oldNotification, "0");

        echo $output;
    }

    public function getUnreadNotification()
    {
        $userId = $this->getSession("userId");

        $todayNotification = $this->notificationModel->getUnreadNotificationDetails($userId, "1");
        $oldNotification = $this->notificationModel->getUnreadNotificationDetails($userId, "0");

        $output = $this->getNotificationTags($todayNotification, "1");
        $output .= $this->getNotificationTags($oldNotification, "0");

        echo $output;
    }

    public function getNotificationTags($result, $isToday)
    {
        if ($isToday === "1") {
            $output =
                "
            <div class='notification-details'>
                <div class='notes'>
                    <span class='note-label'>Today</span>
            ";
        } else if ($isToday === "0") {
            $output =
                "
            <div class='notification-details'>
                <div class='notes'>
                    <span class='note-label'>Old</span>
            ";
        }

        // http://localhost/ALec/public/img/session_favicon.png
        // http: //localhost/ALec/public/img/question_mark.png
        // http: //localhost/ALec/public/img/profile_pic.svg
        // http: //localhost/ALec/public/img/BadgeQuestioner.png
        // http://localhost/ALec/public/img/logo3.png

        //image list
        $images = array("1" => "profile_pic.svg");

        $commonPath = "http://localhost/ALec/public/img/";

        while ($row = mysqli_fetch_assoc($result)) {
            $imagePath = $commonPath . $images[$row["notification_type"]];
            $message = $row["subject"];
            $courseName = $row["description"];
            $notificationId = $row["notification_id"];
            $path = $row["url"];
            $id = "notification-" . $notificationId;
            $time = $row["difference"];

            $output .=
                "
            <a href='javascript:goToPage({$notificationId})' id='notification-link-{$notificationId}' data-value='{$path}' style='all: unset;'>
            <div class='note'>
                <img src='{$imagePath}'>
                <div class='text'>
                    <span><b>{$message}</b></span> <br>
                    <span>{$courseName}</span> <br>
                    <span>{$time} ago</span>
                </div>
                <div class='read-status' id='{$id}'>
                ";

            if ($row["notification_status"] == "F") {
                $output .=
                    "
                    <i class='fa fa-circle' aria-hidden='true'></i>
                    <object>
                        <a href='javascript:readNotification({$notificationId})'style='all: unset;'>
                            <span class='tooltip'>Mark as read</span>
                        </a>
                    </object>
                    ";
            }

            $output .=
                "
                </div>
            </div>
            </a>
            ";
        }

        $output .=
            "
                </div>
            </div>
        ";

        return $output;
    }

    public function updateNavigationBar()
    {
        $userId = $this->getSession("userId");
        $type = $this->getSession("type");
        $details = $this->notificationModel->getUserDetails($userId);

        $name = $details["name"];
        $img = $details["img"];

        if ($type == "lec") {
            $type = "Lecturer";
        } else if ($type == "stu") {
            $type = "Student";
        } else if ($type == "admin") {
            $type = "Admin";
        }


        if (empty($img)) {
            $img = "user_avatar.png";
        } else {
            $img = "../pic_data/{$img}";
        }

        $output =
            "
            <img src='http://localhost/ALec/public/img/{$img}' alt=''>
            <div class='name_job'>
                <div class='name' onclick=''>{$name}</div>
                <div class='job'>{$type}</div>
            </div>
            ";

        echo $output;
    }
}
