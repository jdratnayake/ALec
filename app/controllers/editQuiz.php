<?php

class EditQuiz extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
    }

    public function index($quizId)
    {
        $this->view("lecturer/editQuizView");
    }
}
