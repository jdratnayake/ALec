<?php

class BadgeAward extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->badgeAwardModel = $this->model("badgeAwardModel");
        $this->userProfileModel = $this->model("userProfileModel");
    }

    public function index($studentId)
    {
        $type = "stu";

        $data["success"] = "";

        $data["userId"] = $studentId;
        $data["userDetails"] = $this->userProfileModel->getUserDetails($studentId);
        $data["userDetails"]["randomName"] = $this->userProfileModel->getRandomName($studentId);
        $data["userDetails"]["type"] = $type;
        $data["userDetails"]["regNo"] = $this->userProfileModel->getRegistrationNo($studentId, $type);

        $data["courseDetails"] = $this->userProfileModel->getCourseDetails($studentId, $type);

        $data["badgeDetails"] = $this->badgeAwardModel->getBadgeDetails($studentId);

        $this->view("lecturer/badgeAwardView", $data);
    }
}
