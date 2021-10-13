<?php

class EditQuiz extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->editQuizModel = $this->model("editQuizModel");
    }

    public function index($quizId)
    {
        $data["quizId"] = $quizId;
        $data["quizQuestionSummary"] = $this->editQuizModel->getQuizQuestionsSummary($quizId);
        $data["quizQuestionChoices"] = $this->editQuizModel->getQuizQuestionChoices($quizId);

        $this->view("lecturer/editQuizView", $data);
    }

    public function submit($quizId)
    {
        // var_dump($_POST);
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $quizQuestionSummary = $this->editQuizModel->getQuizQuestionsSummary($quizId);
            $quizQuestionChoices = $this->editQuizModel->getQuizQuestionChoices($quizId);

            while ($row = mysqli_fetch_assoc($quizQuestionSummary)) {
                $question = $_POST["q_$row[question_no]"];
                $type = $type = "mcq-s";

                if (isset($_POST["check_$row[question_no]"])) {
                    $type = $type = "mcq-m";
                }

                $this->editQuizModel->updateQuestion($row["question_no"], $question, $type);

                $count = $row["count"];

                for ($i = 1; $i <= $count; $i++) {
                    $choiceRow = mysqli_fetch_assoc($quizQuestionChoices);
                    $choice = $_POST["choice_$choiceRow[choice_id]"];
                    $points = $_POST["points_$choiceRow[choice_id]"];

                    $this->editQuizModel->updateChoice($choiceRow["choice_id"], $choice, $points);
                }
            }
        }

        $this->index($quizId);
    }
}
