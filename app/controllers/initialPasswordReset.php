<?php

class InitialPasswordReset extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->initialPasswordResetModel = $this->model("initialPasswordResetModel");
    }

    public function index($userId)
    {
        $errors["password1"] = "";
        $errors["password2"] = "";

        $data["errors"] = $errors;
        $data["userId"] = $userId;

        $this->view("initialPasswordResetView", $data);
    }

    public function changePassword($userId)
    {
        if ($_SERVER["REQUEST_METHOD"] = "POST") {
            $password1 = $_POST["password1"];
            $password2 = $_POST["password2"];

            $errors["password1"] = "";
            $errors["password2"] = "";

            if (empty($password1)) {
                $errors["password1"] = "Password is required";
            }

            if (empty($password2)) {
                $errors["password2"] = "Confirm Password is required";
            } else if ($password1 != $password2) {
                $errors["password2"] = "Password Mismatched";
            }

            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                if ($this->initialPasswordResetModel->changePassword($userId, $password1)) {
                    $this->redirect("login");
                }
            } else {
                $data["errors"] = $errors;

                $this->view("passwordRecoveryEditPasswordView", $data);
            }
        }
    }
}
