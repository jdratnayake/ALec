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

        $this->view("loginView", $data);

        //testing purpose: commen login view and include register view
        // $this->view("admin/register", $data);
    }

    public function submit()
    {
        //Initially no errors
        $errors = array();
        $errors['email'] = "";
        $errors['password'] = "";

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
                $password = md5($password);

                $user = $this->loginModel->passwordCheck($email, $password);

                if ($user) {
                    echo "Valid";
                } else {
                    echo "Invalid";
                }
            } else {
                /* Regenerate Login Page With Errors */
                $data['errors'] = $errors;
                $this->view("loginView", $data);
            }
        }
    }
}
