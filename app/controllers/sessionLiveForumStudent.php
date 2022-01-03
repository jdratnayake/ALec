<?php

class sessionLiveForumStudent extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->sessionLiveForumStudentModel = $this->model("sessionLiveForumStudentModel");
    }

    public function index($sessionId)
    {
        $data["bread"]["sessionDetails"] = $this->sessionLiveForumStudentModel->getSessionDetails($sessionId);

        $this->view("student/sessionLiveForumStudentView", $data);
    }
}
