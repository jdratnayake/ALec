<?php

class AttemptQuiz extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->attemptQuizModel = $this->model("attemptQuizModel");
    }

    public function index($quizId)
    {
        $this->view("student/attemptQuizView");
    }
}
