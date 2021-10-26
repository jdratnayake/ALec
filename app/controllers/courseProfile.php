<?php

class CourseProfile extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->courseProfileModel = $this->model("courseProfileModel");
    }

    public function index($course_id)
    {
        $data["success"] = "";

        $successSignal = $this->getSession("successMessageStatus");

        if (isset($successSignal) and $successSignal == "1") {
            $data["success"] = "Course Edited Successfully";
            $this->unsetSession("successMessageStatus");
        }

        $data["courseDetails"] = $this->courseProfileModel->getCourseDetails($course_id);
        $data["lecturerDetails"] = $this->courseProfileModel->getLecturerNames($course_id);
        $data["studentCount"] = $this->courseProfileModel->getStudentCount($course_id);

        $this->view("admin/courseProfileView", $data);
    }

    public function deleteCourse($course_id)
    {
        $this->courseProfileModel->deleteCourse($course_id);
        $this->redirect("courseDetails");
    }
}
