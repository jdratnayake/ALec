<?php

class UserProfile extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->userProfileModel = $this->model("userProfileModel");
    }

    public function index($user_id)
    {
        $data["success"] = "";

        $successSignal = $this->getSession("successMessageStatus");

        if (isset($successSignal)) {
            if ($successSignal == "2") {
                $data["success"] = "Lecturer Edited Successfully";
            } else if ($successSignal == "3") {
                $data["success"] = "Student Edited Successfully";
            }
            $this->unsetSession("successMessageStatus");
        }

        $type = $this->userProfileModel->getType($user_id);

        //Store user id
        $data["userId"] = $user_id;

        //user details
        $data["userDetails"] = $this->userProfileModel->getUserDetails($user_id);
        $data["userDetails"]["regNo"] = $this->userProfileModel->getRegistrationNo($user_id, $type);
        $data["userDetails"]["type"] = $type == "lec" ? "Lecturer" : "Student";

        //if user is a student then get his random name
        if ($type == "stu") {
            $data["userDetails"]["randomName"] = $this->userProfileModel->getRandomName($user_id);
        }

        //course details
        $data["courseDetails"] = $this->userProfileModel->getCourseDetails($user_id, $type);

        //Not assigned course details
        $data["unAssignedCourseDetails"] = $this->userProfileModel->getUnAssignedCourseDetails($user_id, $type);

        //batch details
        $data["badgeDetails"] = $this->userProfileModel->getBadgeDetails($user_id);


        $this->view("admin/userProfileView", $data);
    }

    public function deleteUser($user_id)
    {
        $this->userProfileModel->deleteUserDetails($user_id);
        $this->redirect("userDetails");
    }

    public function assignCourse($user_id, $type)
    {
        // var_dump($_POST);
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $assignCourses = $_POST["current-assigned-courses"];
            $removeCourses = $_POST["current-removed-courses"];

            $assignCourses = trim($assignCourses);
            $removeCourses = trim($removeCourses);

            $assignCourses = explode(" ", $assignCourses);
            $removeCourses = explode(" ", $removeCourses);

            $assignCourses = array_unique($assignCourses);
            $removeCourses = array_unique($removeCourses);

            foreach ($assignCourses as $courseId) {
                $this->userProfileModel->addToCourses($user_id, $type, $courseId);
            }

            foreach ($removeCourses as $courseId) {
                $this->userProfileModel->removeFromCourses($user_id, $type, $courseId);
            }
        }

        $this->redirect("userProfile/index/{$user_id}");
    }
}
