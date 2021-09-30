<?php

class LecturerTopicPage extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->lecturerTopicPageModel = $this->model("lecturerTopicPageModel");
    }

    public function index($courseId)
    {
        $this->view("lecturer/lecturerTopicPageView");
    }
}
