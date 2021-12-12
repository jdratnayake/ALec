<?php

class Notification extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin", "lec", "stu");
        $this->helper("linker");
        $this->notificationModel = $this->model("notificationModel");
    }

    public function notificationCount()
    {
        $userId = $this->getSession("userId");

        echo $this->notificationModel->getNotificationCount($userId);
    }
}
