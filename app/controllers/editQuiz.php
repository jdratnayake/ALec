<?php

class EditQuiz extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
    }

    public function index()
    {
        $this->view("lecturer/editQuizView");
    }
}
