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

    public function index($courseId, $studentId)
    {
        $type = "stu";

        $data["success"] = "";

        $data["studentId"] = $studentId;
        $data["lecturerId"] = $this->getSession("userId");
        $data["userDetails"] = $this->userProfileModel->getUserDetails($studentId);
        $data["userDetails"]["randomName"] = $this->userProfileModel->getRandomName($studentId);
        $data["userDetails"]["type"] = $type;
        $data["userDetails"]["regNo"] = $this->userProfileModel->getRegistrationNo($studentId, $type);

        $data["courseDetails"] = $this->userProfileModel->getCourseDetails($studentId, $type);

        $data["badgeDetails"] = $this->badgeAwardModel->getBadgeDetails($studentId);
        $data["unawardedBadgeDetails"] = $this->badgeAwardModel->getUnawardedBadgeDetails($courseId, $studentId);
        $data["lecturerAssignedBadgeDetails"] = $this->badgeAwardModel->getBadgeDetails($studentId, $data["lecturerId"]);

        $this->view("lecturer/badgeAwardView", $data);
    }

    public function awardBadge($studentId, $badgeId)
    {
        $lecturerId = $this->getSession("userId");

        $this->badgeAwardModel->awardBadge($lecturerId, $studentId, $badgeId);

        $badgeDetail = $this->badgeAwardModel->getSpecificBadgeDetail($lecturerId, $studentId, $badgeId);

        $output =
            "
            <div class='badge'>
                <img src='http://localhost/ALec/public/badge_pic/{$badgeDetail['badge_image']}' alt='Badge Image' class='badge-image'>
                <span>{$badgeDetail['badge_name']}</span>
                <span class='issuer'>{$badgeDetail['lec_name']}</span>
            </div>
        ";

        echo $output;
    }

    public function removeBadge($studentId, $badgeId)
    {
        $lecturerId = $this->getSession("userId");

        $this->badgeAwardModel->removeBadge($lecturerId, $studentId, $badgeId);
    }
}
