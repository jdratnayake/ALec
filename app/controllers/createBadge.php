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

        $errors = array();
        $errors["courseName"] = "";
        $errors["badgeName"] = "";
        $errors["points"] = "";
        $errors["image"] = "";

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            //Badge Details
            $courseIdList = $this->getCourseIdList($_POST["course-id-list"]);
            $badgeName = $_POST["badge-name"];
            $badgeDescription = $_POST["badge-description"];
            $badgePoints = $_POST["badge-points"];

            //Image Details
            $fileType = $_FILES['fileToUpload']['type'];
            $fileSize = $_FILES['fileToUpload']['size'];
            $tempName = $_FILES['fileToUpload']['tmp_name'];

            //Server side validation - START

            //Empty check
            if (empty($courseIdList)) $errors["courseName"] = "Course is required";
            if (empty($badgeName)) $errors["badgeName"] = "Badge Name is required";
            if ($badgePoints == "0") $errors["points"] = "Point is required";
            if (!file_exists($tempName) || !is_uploaded_file($tempName)) {
                $errors["image"] = "Image is required";
            }

            //Server side validation - END

            /* Count number of validation failures */
            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                date_default_timezone_set("Asia/Calcutta");

                $currentDate = date("Y_m_d_h_i_sa");
                $fileName = $currentDate . "." . explode("/", $fileType)[1];
                $uploadTo = "badge_pic/";
                $tempFileName = $fileName;
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
                    foreach ($courseIdList as $courseId) {
                        $this->createBadgeModel->insertBadge($badgeName, $badgeDescription, $badgePoints, $courseId, $tempFileName);
                    }
                }
            }
        }

        $data["errors"] = $errors;

        $this->view("admin/createBadgeView", $data);
    }

    public function getCourseIdList($idString)
    {
        $outputArr = array();
        $idString = trim($idString, " ");
        $idString = explode(" ", $idString);

        foreach ($idString as $id) {
            $id = trim($id, " ");
            if (!empty($id)) {
                array_push($outputArr, $id);
            }
        }

        return $outputArr;
    }
}
