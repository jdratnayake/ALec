<?php

class AttemptQuiz extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->attemptQuizViewModel = $this->model("attemptQuizViewModel");
        $this->attemptQuizMarksModel = $this->model("attemptQuizMarksModel");
    }

    public function index($quizId)
    {
        $data["quizDetails"] = $this->attemptQuizViewModel->getQuizDetails($quizId);
        $data["questions"] = $this->attemptQuizViewModel->getQuizQuestionsSummary($quizId);
        $data["choices"] = $this->attemptQuizViewModel->getQuizQuestionChoices($quizId);

        $this->view("student/attemptQuizView", $data);
    }

    public function submit($quizId)
    {
        $marks = 0;

        // var_dump($_POST);
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $quizQuestions = $this->attemptQuizMarksModel->getQuestionDetails($quizId);

            while ($question = mysqli_fetch_assoc($quizQuestions)) {
                $id = $question["question_no"];
                $type = $question["question_type"];

                if ($type == "mcq-s") {
                } else if ($type == "mcq-m") {
                } else if ($type == "short ans") {
                }
            }
        }
    }
}
