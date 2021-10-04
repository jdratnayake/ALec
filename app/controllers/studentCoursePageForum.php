<?php

class StudentCoursePageForum extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->studentCoursePageForumModel = $this->model("studentCoursePageForumModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");

        $data["courseDetails"] = $this->studentCoursePageForumModel->getCourseDetails($userId);

        $this->view("student/studentCoursePageForumView", $data);
    }
}
