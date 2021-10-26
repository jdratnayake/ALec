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

        //user details
        $data["userDetails"] = $this->userProfileModel->getUserDetails($user_id);
        $data["userDetails"]["regNo"] = $this->userProfileModel->getRegistrationNo($user_id, $type);
        $data["userDetails"]["type"] = $type == "lec" ? "Lecturer" : "Student";

        //course details
        $data["courseDetails"] = $this->userProfileModel->getCourseDetails($user_id, $type);

        //batch details
        $data["badgeDetails"] = $this->userProfileModel->getBadgeDetails($user_id);


        $this->view("admin/userProfileView", $data);
    }

    public function deleteUser($user_id)
    {
        $this->userProfileModel->deleteUserDetails($user_id);
        $this->redirect("userDetails");
    }
}
