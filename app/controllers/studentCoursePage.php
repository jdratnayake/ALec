<?php

class studentCoursePage extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->studentCoursePageModel = $this->model("studentCoursePageModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");

        $data["courseDetails"] = $this->studentCoursePageModel->getCourseDetails($userId);

        $this->view("student/studentCoursePageView", $data);
    }
}
