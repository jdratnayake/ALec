<?php
// Success message status
// 1 = Course edited Successfully

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

        // Success message name selection - START
        $successSignal = $this->getSession("successMessageStatus");

        if (isset($successSignal) and $successSignal == "1") {
            $data["success"] = "Course Edited Successfully";
            $this->unsetSession("successMessageStatus");
        }
        // Success message name selection - END

        // Get data from modal = START
        $data["courseDetails"] = $this->courseProfileModel->getCourseDetails($course_id);
        $data["lecturerDetails"] = $this->courseProfileModel->getLecturerNames($course_id);
        $data["studentCount"] = $this->courseProfileModel->getStudentCount($course_id);
        // Get data from modal = END

        $this->view("admin/courseProfileView", $data);
    }

    public function deleteCourse($course_id)
    {
        $this->courseProfileModel->deleteCourse($course_id);
        $this->redirect("courseDetails");
    }
}
