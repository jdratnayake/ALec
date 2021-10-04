<?php

class StudentForumTopic extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->studentForumTopicModel = $this->model("studentForumTopicModel");
    }

    public function index($courseId)
    {
        $data["forumDetails"] = $this->studentForumTopicModel->getForumDetails($courseId);

        $this->view("student/studentForumTopicView", $data);
    }
}
