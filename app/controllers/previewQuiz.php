<?php

class PreviewQuiz extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->previewQuizModel = $this->model("previewQuizModel");
    }

    public function index($quizId)
    {
        $data["courseName"] = $this->previewQuizModel->getCourseName($quizId);
        $data["quizName"] = $this->previewQuizModel->getQuizName($quizId);
        $data["questions"] = $this->previewQuizModel->getQuizQuestionsSummary($quizId);
        $data["questionChoices"] = $this->previewQuizModel->getQuizQuestionChoices($quizId);

        $this->view("lecturer/previewQuizView", $data);
    }
}
