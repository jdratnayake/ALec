<?php

class CreateQuizDashboard extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->createQuizDashboardModel = $this->model("createQuizDashboardModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");
        $data["courseDetails"] = $this->createQuizDashboardModel->getCourseDetails($userId);

        $this->view("lecturer/createQuizDashboardView", $data);
    }

    public function topic($courseId)
    {
        echo $this->createQuizDashboardModel->getTopicDetails($courseId);
    }
}
