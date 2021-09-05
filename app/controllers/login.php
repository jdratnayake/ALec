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
    }

    public function submit()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            //Initially no errors
            $errors = array();
            $errors['email'] = "";
            $errors['password'] = "";

            $email = $_POST['email'];
            $password = $_POST['password'];

            // echo $email;
            // echo $password;
        }
    }
}
