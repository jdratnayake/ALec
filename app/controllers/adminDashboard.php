<?php

class AdminDashboard extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->registerModel = $this->model("registerModel");
    }

    public function index()
    {
        $this->view("admin/adminDashboardView");
    }

    public function submit()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            // FILE UPLOAD START

            date_default_timezone_set("Asia/Kolkata");

            $fileName = date('Y-m-d_h-i-s', time()) . "_" . $_FILES['fileToUpload']['name'];
            $fileType = $_FILES['fileToUpload']['type'];
            $fileSize = $_FILES['fileToUpload']['size'];
            $tempName = $_FILES['fileToUpload']['tmp_name'];

            $uploadTo = "acc_data/";

            // checking the file type
            if ($fileType != 'text/plain') {
                $errors[] = 'Only .txt files are allowed.';
            }

            // checking file size
            if ($fileSize > 500000) {
                $errors[] = 'File size should be less than 500kb.';
            }

            if (empty($errors)) {
                $file_uploaded = move_uploaded_file($tempName, $uploadTo . $fileName);
            }

            // FILE UPLOAD END

            //FILE PROCESS START

            $fp = fopen($uploadTo . $fileName, "r");

            while (($line = fgets($fp)) !== false) {
                $data = explode(" ", $line);

                if (isset($data[0]) && isset($data[1]) && isset($data[2]) && isset($data[3])) {
                    // echo $data["0"] . "<br>";
                    // echo $data["1"] . "<br>";
                    // echo $data["2"] . "<br>";
                    // echo $data["3"] . "<br>";

                    $data[0] = trim($data[0]);
                    $data[1] = trim($data[1]);
                    $data[2] = trim($data[2]);
                    $data[3] = trim($data[3]);

                    $password = password_hash($data["3"], PASSWORD_DEFAULT);

                    $this->registerModel->addUser($data["2"], $data["3"], $data["0"], $data["1"], $password, "stu");
                }


                // print_r($data);
            }

            fclose($fp);

            //FILE PROCESS END

            $this->index();
        }
    }
}
