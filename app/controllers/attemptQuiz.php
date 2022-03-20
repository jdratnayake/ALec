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
        $userId = $this->getSession("userId");
        $this->attemptQuizViewModel->insertAttempt($userId, $quizId);

        $data["quizDetails"] = $this->attemptQuizViewModel->getQuizDetails($quizId);
        $data["questions"] = $this->attemptQuizViewModel->getQuizQuestionsSummary($quizId);
        $data["choices"] = $this->attemptQuizViewModel->getQuizQuestionChoices($quizId);
        $data["closeTime"] = $this->attemptQuizViewModel->getClosingTime($userId, $quizId);
        $this->view("student/attemptQuizView", $data);
    }

    public function submit($quizId)
    {
        // print_r($_POST);
        // return 0;

        $totakMarks = 0;

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            //Preprocess - START
            $questionIdString = $_POST["questionIdString"];
            $questionTypeString = $_POST["questionTypeString"];

            $questionIdString = explode("_", $questionIdString);
            $questionTypeString = explode("_", $questionTypeString);
            //Preprocess - END

            //To store question marks and sucess rate
            $questionMarksArray = array();
            $sucessRateArray = array();

            $totalMarks = 0;
            $attemptCount = $this->attemptQuizMarksModel->getAttemptCount($quizId) + 1;

            for ($i = 0; $i < sizeof($questionIdString); $i++) {
                $questionId = $questionIdString[$i];
                $questionType = $questionTypeString[$i];
                $questionMarks = 0;

                if ($questionType == "mcq-s") {
                    if (isset($_POST[$questionId])) {
                        $choiceId = $_POST[$questionId];
                        $questionMarks = $this->attemptQuizMarksModel->getChoiceMark($choiceId);
                    }
                } else if ($questionType == "mcq-m") {
                    $choiceIdList = $this->attemptQuizMarksModel->getChoiceIds($questionId);

                    $questionMarks = 0;

                    while ($row = mysqli_fetch_assoc($choiceIdList)) {
                        if (isset($_POST[$row["choice_id"]])) {
                            $questionMarks += $this->attemptQuizMarksModel->getChoiceMark($row["choice_id"]);
                        }
                    }

                    echo $questionMarks;
                    return 0;
                } else if ($questionType == "short ans") {
                    $choiceName = $this->attemptQuizMarksModel->getShortAnswerChoice($questionId);
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

                //calculate sucess rate
                $sucessRate = $this->attemptQuizMarksModel->getSucessRate($questionId);

                //Add positive marks to the success_rate column in quiz_question
                if ($questionMarks > 0) {
                    //calculate sucess rate
                    $sucessRate += $questionMarks;

                    $this->attemptQuizMarksModel->updateSucessRate($questionId, $sucessRate);
                }

                //calculate sucess precentage
                $precentage = ($sucessRate / $attemptCount);

                $totakMarks += $questionMarks;

                array_push($sucessRateArray, $precentage);
                array_push($questionMarksArray, $questionMarks);
            }

            //Insert student attempt record
            $userId = $this->getSession("userId");
            $this->attemptQuizMarksModel->updateAttempt($userId, $quizId, $totakMarks);

            //Output - Testing
            var_dump($questionIdString);
            echo "<br><br><br>";
            var_dump($sucessRateArray);
            echo "<br><br><br>";
            var_dump($questionMarksArray);
        }
    }
}
