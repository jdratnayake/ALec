<?php

class EditProfile extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin", "lec", "stu");
        $this->helper("linker");
        $this->editProfileModel = $this->model("editProfileModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");
        $type = $this->getSession("type");

        $data["userDetails"] = $this->editProfileModel->getUserDetails($userId, $type);
        $data["courseDetails"] = $this->editProfileModel->getCourseDetails($userId, $type);

        $this->view("editProfileView", $data);
    }

    public function submit()
    {
        // print_r($_POST);
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $fName = $_POST["fName"];
            $lName = $_POST["lName"];
            $tele = $_POST["tele"];
            $userId = $this->getSession("userId");

            $this->editProfileModel->updateUserDetails($userId, $fName, $lName, $tele);
        }

        $this->index();
    }

    public function upload()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            $fileType = $_FILES['fileToUpload']['type'];
            $fileSize = $_FILES['fileToUpload']['size'];
            $tempName = $_FILES['fileToUpload']['tmp_name'];

            $userId = $this->getSession("userId");
            $fileName = $userId . "." . explode("/", $fileType)[1];
            $uploadTo = "pic_data/";
            $temp = $fileName;
            $fileName = $uploadTo . $fileName;


            $allowed = array("image/jpeg", "image/gif", "image/png");
            if (!in_array($fileType, $allowed)) {
                $errors[] = 'Only jpg, gif, and png files are allowed.';
            }

            if ($fileSize > 5000000) {
                $errors[] = 'File size should be less than 5MB.';
            }

            if (empty($errors)) {
                foreach ($allowed as $type) {
                    $tempFileName = "pic_data/" . $userId . "." . explode("/", $type)[1];

                    if (file_exists($tempFileName)) {
                        unlink($tempFileName);
                    }
                }

                $file_uploaded = move_uploaded_file($tempName, $fileName);
            }

            if ($file_uploaded) {
                $this->editProfileModel->insertFileName($userId, $temp);
            }

            $this->index();
        }
    }
}
