<?php

class UserEdit extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->userEditModel = $this->model("userEditModel");
    }

    public function index($user_id = "null")
    {
        // echo $user_id;
        $errors = array();
        $errors["email"] = "";
        $errors["regNo"] = "";
        $errors["fName"] = "";
        $errors["lName"] = "";
        $errors["password"] = "";

        $data["errors"] = $errors;

        //Capture form data
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // if (isset($_POST["changePassword"])) {
            //     echo "osy";
            // }
            $email = $_POST["email"];
            $regNo = $_POST["regNo"];
            $fName = $_POST["fName"];
            $lName = $_POST["lName"];
            $password = $_POST["password"];
            $user_id = $_POST["userID"];
            $type = $_POST["type"];

            $passwordSignal = 0;
            if (isset($_POST["changePassword"])) {
                $passwordSignal = 1;

                //Encrypy password
                $password = password_hash($password, PASSWORD_DEFAULT);
            }

            // echo "<p align='center'>";
            // echo $email . "<br>";
            // echo $regNo . "<br>";
            // echo $fName . "<br>";
            // echo $lName . "<br>";
            // echo $password . "<br>";
            // echo $user_id . "<br>";
            // echo $type . "<br>";
            // echo "<p>";

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
            if (isset($_POST["changePassword"]) and empty($password)) $errors["password"] = "Password is required";

            // Unique check
            if ($this->userEditModel->emailCheck($email, $user_id)) {
                $errors["email"] = "Email is already exists";
            }

            if ($this->userEditModel->userNoCheck($type, $regNo, $user_id)) {
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
                $this->userEditModel->updateUser($email, $regNo, $fName, $lName, $password, $user_id, $type, $passwordSignal);
                $this->redirect("userProfile/index/${user_id}");
                // echo "<h1 align='center'>$password</h1>";
            } else {
                $data["errors"] = $errors;
            }
        }

        $data["userDetails"] = $this->userEditModel->getUserDetails($user_id);
        $this->view("admin/userEditView", $data);
    }
}
