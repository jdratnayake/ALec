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
        $data["bread"]["courseDetails"] = $this->editQuizModel->getCourseDetails($quizId);
        $data["quizId"] = $quizId;
        $data["quizQuestionSummary"] = $this->editQuizModel->getQuizQuestionsSummary($quizId);
        $data["quizQuestionChoices"] = $this->editQuizModel->getQuizQuestionChoices($quizId);

        $this->view("lecturer/editQuizView", $data);
    }

    public function submit($quizId)
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $quizQuestionSummary = $this->editQuizModel->getQuizQuestionsSummary($quizId);
            $quizQuestionChoices = $this->editQuizModel->getQuizQuestionChoices($quizId);

            while ($row = mysqli_fetch_assoc($quizQuestionSummary)) {

                // Check that old questions are exist if not delete them from the database
                if (!isset($_POST["q_$row[question_no]"])) {
                    $this->editQuizModel->deleteQuestion($row["question_no"]);
                    continue;
                }

                // Determine mcq question type - START
                $question = $_POST["q_$row[question_no]"];
                $type = $row["question_type"];

                if (isset($_POST["check_$row[question_no]"])) {
                    $type = "mcq-m";
                } else if ($type != "short ans") {
                    $type = "mcq-s";
                }
                // Determine mcq question type - END

                // Update the question
                $this->editQuizModel->updateQuestion($row["question_no"], $question, $type);

                // Answer count
                $count = $row["count"];

                for ($i = 1; $i <= $count; $i++) {
                    $choiceRow = mysqli_fetch_assoc($quizQuestionChoices);

                    // Check that old choice is exist if not delete them from the database
                    if (!isset($_POST["choice_$choiceRow[choice_id]"])) {
                        $this->editQuizModel->deleteAnswer($choiceRow["choice_id"]);
                        continue;
                    }

                    $choice = $_POST["choice_$choiceRow[choice_id]"];
                    $points = $_POST["points_$choiceRow[choice_id]"];

                    // Update choice
                    $this->editQuizModel->updateChoice($choiceRow["choice_id"], $choice, $points);
                }
            }

            $count = $_POST["new-question-count"];

            // Add new questions
            for ($i = 1; $i <= $count; $i++) {
                $question = $_POST["q_{$i}"];
                $type = $_POST["{$i}_type"];

                // echo $question;
                // echo $type;
                // return 0;

                if ($type == "mcq") {
                    if (isset($_POST["q_{$i}_type"])) {
                        $type = "mcq-m";
                    } else {
                        $type = "mcq-s";
                    }
                }

                $questionId = $this->editQuizModel->insertQuizQuestion($quizId, $question, $type);

                if ($type == "short ans") {
                    $choice = $_POST["q_{$i}_choice_1"];

                    $this->editQuizModel->insertChoice($questionId, $quizId, $choice, 100);
                } else if ($type == "mcq-m" or $type == "mcq-s") {
                    $j = 1;

                    while (isset($_POST["q_{$i}_choice_$j"]) && !empty($_POST["q_{$i}_choice_$j"])) {
                        if (isset($_POST["q_{$i}_points_$j"]) && !empty($_POST["q_{$i}_points_$j"])) {
                            $choice = chop($_POST["q_{$i}_choice_$j"]);
                            $points = chop($_POST["q_{$i}_points_$j"], "%");

                            $this->editQuizModel->insertChoice($questionId, $quizId, $choice, $points);
                        }

                        $j++;
                    }
                }
            }
        }

        $this->setSession("successMessageStatus", 1);
        $this->redirect("previewQuiz/index/{$quizId}");
    }
}
