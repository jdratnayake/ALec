<?php

class CreateBadge extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->createBadgeModel = $this->model("createBadgeModel");
    }

    public function index()
    {
        $data["courseDetails"] = $this->createBadgeModel->getCourses();

        $this->view("admin/createBadgeView", $data);
    }

    public function submit()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $courseId = $_POST["course"];
            $badgeName = $_POST["badge-name"];

            //image Details
            $fileType = $_FILES['fileToUpload']['type'];
            $fileSize = $_FILES['fileToUpload']['size'];
            $tempName = $_FILES['fileToUpload']['tmp_name'];

            date_default_timezone_set(date_default_timezone_get());

            $currentDate = date("Y_m_d_h_i_sa");
            $fileName = $courseId . "__" . $currentDate . "." . explode("/", $fileType)[1];
            $uploadTo = "badge_pic/";
            $temp = $fileName;
            $fileName = $uploadTo . $fileName;


            $allowed = array("image/jpeg", "image/jpg", "image/png");
            if (!in_array($fileType, $allowed)) {
                $errors[] = 'Only jpeg, jpg, and png files are allowed.';
            }

            if ($fileSize > 5000000) {
                $errors[] = 'File size should be less than 5MB.';
            }

            if (empty($errors)) {
                $file_uploaded = move_uploaded_file($tempName, $fileName);
            }

            if ($file_uploaded) {
            }
        }
    }
}
