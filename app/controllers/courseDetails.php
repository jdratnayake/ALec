<?php

class CourseDetails extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->courseDetailsModel = $this->model("courseDetailsModel");
    }

    public function index($year = "all")
    {
        $data["courseDetails"] = $this->courseDetailsModel->getCourseDetails($year);

        $this->view("admin/courseDetailsView", $data);
    }
}
