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
        $data["quizDetails"] = $this->attemptQuizModel->getQuizDetails($quizId);
        $data["questions"] = $this->attemptQuizModel->getQuizQuestionsSummary($quizId);
        $data["choices"] = $this->attemptQuizModel->getQuizQuestionChoices($quizId);

        $this->view("student/attemptQuizView", $data);
    }
}
