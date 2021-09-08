<?php

use function PHPSTORM_META\type;

class Register extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->registerModel = $this->model("registerModel");
    }

    public function index()
    {
        $errors = array();
        $errors["email"] = "";
        $errors["regNo"] = "";
        $errors["fName"] = "";
        $errors["lName"] = "";
        $errors["password"] = "";

        $data["errors"] = $errors;

        //Capture form data
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $email = $_POST["email"];
            $regNo = $_POST["regNo"];
            $fName = $_POST["fName"];
            $lName = $_POST["lName"];
            $password = $_POST["password"];
            $type = $_POST["type"];

            //Empty check
            if (empty($email)) $errors["email"] = "Email is required";
            if (empty($regNo)) {
                if ($type == 2) {
                    $errors["regNo"] = "Registration No is required";
                } else if ($type == 3) {
                    $errors["regNo"] = "Index No is required";
                }
            }
            if (empty($fName)) $errors["fName"] = "First Name is required";
            if (empty($lName)) $errors["lName"] = "Last Name is required";
            if (empty($password)) $errors["password"] = "Password is required";

            //Unique check
            if ($this->registerModel->emailCheck($email)) {
                $errors["email"] = "Email is already exists";
            }

            if ($this->registerModel->userNoCheck($type, $regNo)) {
                if ($type == 2) {
                    $errors["regNo"] = "Registration No is already exists";
                } else if ($type == 3) {
                    $errors["regNo"] = "Index No is already exists";
                }
            }

            /* Count number of validation failures */
            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                //Encrypy password
                $password = password_hash($password, PASSWORD_DEFAULT);

                //Insert data
                $this->registerModel->addUser($email, $regNo, $fName, $lName, $password, $type);
                // echo "<h1 align='center'>$password</h1>";
            } else {
                $data["errors"] = $errors;

                $this->view("admin/registerView", $data);
            }
        } else {
            $this->view("admin/registerView", $data);
        }
    }
}
