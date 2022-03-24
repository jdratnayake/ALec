<?php

class Login extends AlecFramework
{
    public function __construct()
    {
        $this->loginModel = $this->model("loginModel");
        $this->helper("linker");

        //need to add log file and mail(if needed) file
    }

    public function index()
    {
        //Initially no errors
        $errors = array();
        $errors['email'] = "";
        $errors['password'] = "";

        $data['errors'] = $errors;

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            //Get data from the form
            $email = $_POST['email'];
            $password = $_POST['password'];

            //Form validation - start
            if (empty($email)) {
                $errors['email'] = "Email is required";
            }

            if (empty($password)) {
                $errors['password'] = "Password is required";
            }
            //Form validation - end

            if (!empty($email) && !empty($password)) {

                //Check login password
                $user = $this->loginModel->passwordCheck($email, $password);

                if ($user) {
                    //get account status
                    $status = $this->loginModel->getUserAcoountStatus($user["user_id"]);

                    if ($status == "0") {
                        $this->redirect("initialPasswordReset/index/" . $user["user_id"]);
                    }

                    $this->setSession("userId", $user["user_id"]);
                    $this->setSession("type", $user["user_type"]);

                    if ($status == "1") {
                        //Specify redirect path after successful login
                        $this->redirect("dashboard");
                    }
                } else {
                    //If login password is mismatched
                    $data["email"] = $email;
                    $errors["password"] = "Invalid Login ! - Wrong User Name OR Password";
                }
            } else {
                // Regenerate Login Page With Errors
                $data['errors'] = $errors;
                $this->view("loginView", $data);
            }
        }

        $data['errors'] = $errors;
        $this->view("loginView", $data);
    }
}
