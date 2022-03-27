<?php
// Success message status
// 1 = Course Created Successfully

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
        // Success message name selection - START
        $successSignal = $this->getSession("successMessageStatus");

        if (isset($successSignal) and $successSignal == "1") {
            $data["success"] = "Course Created Successfully";
            $this->unsetSession("successMessageStatus");
        } else {
            $data["success"] = "";
        }
        // Success message name selection - END

        // Get course details
        $data["courseDetails"] = $this->courseDetailsModel->getCourseDetails($year);

        $this->view("admin/courseDetailsView", $data);
    }

    public function ajaxCourseDetails($year = "all")
    {
        echo $this->courseDetailsModel->ajaxGetCourseDetails($year);
    }

    public function search()
    {
        $data = $_POST["search-tag"];

        echo $this->courseDetailsModel->getSearchResults($data);
    }
}
