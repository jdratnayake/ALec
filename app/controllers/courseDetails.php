<?php

class CourseDetails extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->courseDetailsModel = $this->model("courseDetailsModel");
    }

    public function index($year = "all")
    {
        $data["courseDetails"] = $this->courseDetailsModel->getCourseDetails($year);

        $this->view("admin/courseDetailsView", $data);
    }

    public function ajaxCourseDetails($year = "all")
    {
        echo $this->courseDetailsModel->ajaxGetCourseDetails($year);
    }

    public function search($data)
    {
        echo $this->courseDetailsModel->getSearchResults($data);
    }
}
