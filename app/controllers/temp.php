<?php

class Temp extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
    }

    public function index()
    {
        $this->view("lecturer/createQuiz");
    }

    public function submit()
    {
        var_dump($_POST);
    }
}
