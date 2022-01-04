<?php

class Badge extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->badgeModel = $this->model("badgeModel");
    }

    public function index($courseId = "")
    {
        $data["courseDetailsDropdown"] = $this->badgeModel->getCourses();

        if (empty($courseId)) {
            $data["emptySignal"] = 1;
        } else {
            $data["emptySignal"] = 0;
            $data["courseDetails"] = $this->badgeModel->getCourseDetails($courseId);
            $data["badgeDetails"] = $this->badgeModel->getBadgeDetails($courseId);
        }

        $this->view("admin/badgesDisplayView", $data);
    }

    public function create()
    {
        $data["courseDetails"] = $this->badgeModel->getCourses();

        $errors = array();
        $errors["courseName"] = "";
        $errors["badgeName"] = "";
        $errors["points"] = "";
        $errors["image"] = "";

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // var_dump($_POST);
            // var_dump($_FILES);
            // return 0;

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
                    $imageErrors[] = 'Only jpeg, jpg, and png files are allowed.';
                }

                if ($fileSize > 5000000) {
                    $imageError[] = 'File size should be less than 5MB.';
                }

                if (empty($imageError)) {
                    $file_uploaded = move_uploaded_file($tempName, $fileName);
                }

                if ($file_uploaded) {
                    foreach ($courseIdList as $courseId) {
                        $this->badgeModel->insertBadge($badgeName, $badgeDescription, $badgePoints, $courseId, $tempFileName);
                    }
                }

                $this->redirect("badge/index/{$courseId}");
            }
        }

        $data["errors"] = $errors;

        $this->view("admin/badgeCreateView", $data);
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
