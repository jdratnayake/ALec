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
        $totakMarks = 0;

        var_dump($_POST);
        return 0;

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            //Preprocess - START
            $questionIdString = $_POST["questionIdString"];
            $questionTypeString = $_POST["questionTypeString"];

            $questionIdString = trim($questionIdString, "_");
            $questionTypeString = trim($questionTypeString, "_");

            $questionIdString = explode("_", $questionIdString);
            $questionTypeString = explode("_", $questionTypeString);
            //Preprocess - END

            for ($i = 0; $i < sizeof($questionIdString); $i++) {
                $questionId = $questionIdString[$i];
                $questionType = $questionTypeString[$i];

                if ($questionType == "mcq-s") {
                    $choiceId = $_POST[$questionId];
                    $questionMarks = $this->attemptQuizMarksModel->getChoiceMark($choiceId);
                } else if ($questionType == "mcq-m") {
                    $choiceIdList = $this->attemptQuizMarksModel->getChoiceIds($questionId);

                    $questionMarks = 0;

                    while ($row = mysqli_fetch_assoc($choiceIdList)) {
                        if (isset($_POST[$row["choice_id"]])) {
                            $questionMarks += $this->attemptQuizMarksModel->getChoiceMark($row["choice_id"]);
                        }
                    }
                } else if ($questionType == "short ans") {
                    $choiceId = $_POST[$questionId];
                    $choiceName = $this->attemptQuizMarksModel->getShortAnswerChoice($choiceId);
                    $choiceName = strtolower($choiceName);
                    $choiceName = trim($choiceName, " ");

                    $givenChoiceName = strtolower($_POST[$questionId]);
                    $givenChoiceName = trim($givenChoiceName, " ");

                    if ($choiceName == $givenChoiceName) {
                        $questionMarks = 100;
                    } else {
                        $questionMarks = 0;
                    }
                }
            }
        }
    }
}
