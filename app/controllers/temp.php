<?php

class Temp extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
    }

    public function index()
    {
        $this->view("profileDetails");
        // $this->view("lecturer/create_quiz");
    }

    public function submit()
    {

        var_dump($_POST);
    }
}