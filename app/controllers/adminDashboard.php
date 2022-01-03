<?php

// 1-1 = lecturer insert
// 1-2 = student insert
// 2-1 = student enrollment
// 2-2 = student remove
// 3-1 = lecturer delete
// 3-2 = student delete

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
        $successSignal = $this->getSession("successMessageStatus");
        $data["success"] = "";

        if (isset($successSignal)) {
            if ($successSignal == "1-1") {
                $data["success"] = "Lecturers Were Added Successfully";
            } else if ($successSignal == "1-2") {
                $data["success"] = "Students Were Added Successfully";
            } else if ($successSignal == "2-1") {
                $data["success"] = "Students Were Added to Course Successfully";
            } else if ($successSignal == "2-2") {
                $data["success"] = "Students Were Removed from Course Successfully";
            } else if ($successSignal == "3-1") {
                $data["success"] = "Lecturers Were Deleted Successfully";
            } else if ($successSignal == "3-2") {
                $data["success"] = "Students Were Deleted Successfully";
            }
        }

        $this->unsetSession("successMessageStatus");

        $this->view("admin/adminDashboardView", $data);
    }

    //User insertion
    public function submit()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $type = $_POST["upload-user-type"];

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

                        $randomName = $this->getRandomName();
                        $randomFirstName = explode(" ", $randomName)[0];
                        $randomLastName = explode(" ", $randomName)[1];

                        $password = password_hash($data["3"], PASSWORD_DEFAULT);

                        $this->registerModel->addUser($data["2"], $data["3"], $data["0"], $data["1"], $password, $type, $randomFirstName, $randomLastName);
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

                        $randomName = $this->getRandomName();
                        $randomFirstName = explode(" ", $randomName)[0];
                        $randomLastName = explode(" ", $randomName)[1];

                        $password = password_hash($data["3"], PASSWORD_DEFAULT);

                        $this->registerModel->addUser($data["2"], $data["3"], $data["0"], $data["1"], $password, $type, $randomFirstName, $randomLastName);
                    }
                }

                fclose($fp);
            }

            if ($type == "2") {
                $this->setSession("successMessageStatus", "1-1");
            } else if ($type == "3") {
                $this->setSession("successMessageStatus", "1-2");
            }

            //FILE PROCESS END
            $this->redirect("adminDashboard/index");
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
        } else if ($num == 3) {
            $file = "download_data/StudentList.csv";
            header('Content-Disposition: attachment; filename="StudentList.csv"');
        } else if ($num == 4) {
            $file = "download_data/LecturerList.csv";
            header('Content-Disposition: attachment; filename="LecturerList.csv"');
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
        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            // var_dump($_POST);
            // return 0;

            $action = $_POST["action"];
            $courseId = $_POST["course"];

            $mode = $_POST["user-type"];

            if ($mode == "year") {
                $year = $_POST["year"];

                if ($action == "assign") {

                    if ($year == "all") {
                        for ($i = 1; $i <= 4; $i++) {
                            $this->registerModel->assignStudentsYearWise($i, $courseId);
                        }
                    } else if ($year != "null") {
                        $this->registerModel->assignStudentsYearWise($year, $courseId);
                    }
                } else if ($action == "remove") {

                    if ($year == "all") {
                        for ($i = 1; $i <= 4; $i++) {
                            $this->registerModel->removeStudentsYearWise($year, $courseId);
                        }
                    } else if ($year != "null") {

                        $this->registerModel->removeStudentsYearWise($year, $courseId);
                    }
                }
            } else if ($mode == "file") {
                $this->submitEnrollment($action, $courseId);
            }
        }

        if ($action == "assign") {
            $this->setSession("successMessageStatus", "2-1");
        } else if ($action == "remove") {
            $this->setSession("successMessageStatus", "2-2");
        }

        $this->redirect("adminDashboard/index");
    }

    public function submitEnrollment($action, $courseId)
    {

        $type = $_POST["upload-user-type"];

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

            if ($action == "assign") {
                while (($line = fgets($fp)) !== false) {
                    if (isset($line) and !empty($line)) {
                        $this->registerModel->assignStudent(trim($line), $courseId);
                    }
                }
            } else if ($action == "remove") {
                while (($line = fgets($fp)) !== false) {
                    if (isset($line) and !empty($line)) {
                        $this->registerModel->removeStudent(trim($line), $courseId);
                    }
                }
            }

            fclose($fp);
        } else {
            $fp = fopen($uploadTo . $fileName, "r");
            //Remove Labels
            fgetcsv($fp);

            if ($action == "assign") {
                while (!feof($fp)) {
                    $data = fgetcsv($fp);

                    if (isset($data[0]) and !empty($data[0])) {
                        $this->registerModel->assignStudent(trim($data[0]), $courseId);
                    }
                }
            } else if ($action == "remove") {
                while (!feof($fp)) {
                    $data = fgetcsv($fp);

                    if (isset($data[0]) and !empty($data[0])) {
                        $this->registerModel->removeStudent(trim($data[0]), $courseId);
                    }
                }
            }

            fclose($fp);
        }

        //FILE PROCESS END

    }

    public function deleteUsers()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // lecturer = 2, student = 3
            $type = $_POST["upload-user-type"];

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

                    if (isset($line)) {
                        $data = trim($line);

                        $this->registerModel->deleteUser($data, $type);
                    }
                }

                fclose($fp);
            } else {
                $fp = fopen($uploadTo . $fileName, "r");
                //Remove Labels
                fgetcsv($fp);

                while (!feof($fp)) {
                    $data = fgetcsv($fp);

                    if (isset($data[0])) {
                        $data = trim($data[0]);

                        $this->registerModel->deleteUser($data, $type);
                    }
                }

                fclose($fp);
            }

            //FILE PROCESS END

            if ($type == 2) {
                $this->setSession("successMessageStatus", "3-1");
            } else if ($type == 3) {
                $this->setSession("successMessageStatus", "3-2");
            }

            $this->redirect("adminDashboard/index");
        }
    }

    public function getRandomName()
    {
        $fNameFile = fopen("download_data/firstNames.txt", "r") or die("Unable To Open File!");
        $lNameFile = fopen("download_data/lastNames.txt", "r") or die("Unable To Open File!");

        $firstNames = array();
        $lastNames = array();

        while (!feof($fNameFile)) {
            array_push($firstNames, str_replace(' ', '', fgets($fNameFile)));
            array_push($lastNames, str_replace(' ', '', fgets($lNameFile)));
        }

        fclose($fNameFile);
        fclose($lNameFile);

        $count = 1;

        do {
            $num1 = mt_rand() % 100;
            $num2 = mt_rand() % 100;
            $name = $firstNames[$num1] . " " . $lastNames[$num2];
            $count++;
        } while (($this->registerModel->checkRandomName($firstNames[$num1], $lastNames[$num2])) && ($count <= 100));

        return $name;
    }
}
