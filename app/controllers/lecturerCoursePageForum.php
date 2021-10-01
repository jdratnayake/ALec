<?php

class LecturerCoursePageForum extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->lecturerCoursePageForumModel = $this->model("lecturerCoursePageForumModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");

        $data["courseDetails"] = $this->lecturerCoursePageForumModel->getCourseDetails($userId);

        $this->view("lecturer/lecturerCoursePageForumView", $data);
    }
}
