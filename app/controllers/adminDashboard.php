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
            $type = $_POST["upload-user-type"];

            // echo $type;
            // return 0;

            // FILE UPLOAD START

            date_default_timezone_set("Asia/Kolkata");

            $fileName = date('Y-m-d_h-i-s', time()) . "_" . $_FILES['fileToUpload']['name'];
            $fileType = $_FILES['fileToUpload']['type'];
            $fileSize = $_FILES['fileToUpload']['size'];
            $tempName = $_FILES['fileToUpload']['tmp_name'];

            $uploadTo = "acc_data/";

            // checking the file type - START
            $csv_mimetypes = array(
                'text/csv',
                'text/plain',
                'application/csv',
                'text/comma-separated-values',
                'application/excel',
                'application/vnd.ms-excel',
                'application/vnd.msexcel',
                'text/anytext',
                'application/octet-stream',
                'application/txt',
            );

            if (!in_array($fileType, $csv_mimetypes)) {
                $errors[] = 'Only .txt and .csv files are allowed.';
            }
            // checking the file type - END

            // checking file size
            if ($fileSize > 500000) {
                $errors[] = 'File size should be less than 500kb.';
            }

            if (empty($errors)) {
                $file_uploaded = move_uploaded_file($tempName, $uploadTo . $fileName);
            }

            // FILE UPLOAD END

            //FILE PROCESS START

            if ($fileType == "text/plain") {
                $fp = fopen($uploadTo . $fileName, "r");

                while (($line = fgets($fp)) !== false) {
                    $data = explode(" ", $line);

                    if (isset($data[0]) && isset($data[1]) && isset($data[2]) && isset($data[3])) {
                        $data[0] = trim($data[0]);
                        $data[1] = trim($data[1]);
                        $data[2] = trim($data[2]);
                        $data[3] = trim($data[3]);

                        $password = password_hash($data["3"], PASSWORD_DEFAULT);

                        $this->registerModel->addUser($data["2"], $data["3"], $data["0"], $data["1"], $password, $type);
                    }
                }

                fclose($fp);
            } else {
                $fp = fopen($uploadTo . $fileName, "r");
                //Remove Labels
                fgetcsv($fp);

                while (!feof($fp)) {
                    $data = fgetcsv($fp);

                    if (isset($data[0]) && isset($data[1]) && isset($data[2]) && isset($data[3])) {
                        $data[0] = trim($data[0]);
                        $data[1] = trim($data[1]);
                        $data[2] = trim($data[2]);
                        $data[3] = trim($data[3]);

                        $password = password_hash($data["3"], PASSWORD_DEFAULT);

                        $this->registerModel->addUser($data["2"], $data["3"], $data["0"], $data["1"], $password, $type);
                    }
                }

                fclose($fp);
            }

            //FILE PROCESS END

            $this->index();
        }
    }

    public function download($num)
    {
        if ($num == 1) {
            $file = "download_data/Lecturer_List.csv";
            header('Content-Disposition: attachment; filename="Lecturer_List.csv"');
        } else if ($num == 2) {
            $file = "download_data/Student_List.csv";
            header('Content-Disposition: attachment; filename="Student_List.csv"');
        }


        $type = filetype($file);
        header("Content-Type: $type");
        // header('Content-Disposition: attachment; filename="List.csv"');
        readfile($file);
    }

    public function course()
    {
        echo $this->registerModel->getCourseDetails();
    }

    public function manageCourseParticiption()
    {
        var_dump($_POST);
    }
}
