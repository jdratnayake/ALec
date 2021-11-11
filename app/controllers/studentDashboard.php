<?php

class StudentDashboard extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->studentDashboardModel = $this->model("studentDashboardModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");
        $data["quizDetails"] = $this->studentDashboardModel->getActiveQuizzesDetails($userId);
        $this->view("student/studentDashboardView", $data);
    }
}
