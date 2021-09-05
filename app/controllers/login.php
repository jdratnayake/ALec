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
        $this->view("loginView");
    }
}
