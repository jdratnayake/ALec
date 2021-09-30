<?php

class LecturerCoursePage extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->lecturerCoursePageModel = $this->model("lecturerCoursePageModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");

        $data["courseDetails"] = $this->lecturerCoursePageModel->getCourseDetails($userId);

        $this->view("lecturer/lecturerCoursePageView", $data);
    }
}
