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
        $data["quizId"] = $quizId;
        $this->view("lecturer/editQuizView", $data);
    }

    public function submit($quizId)
    {
        var_dump($_POST);
    }
}
