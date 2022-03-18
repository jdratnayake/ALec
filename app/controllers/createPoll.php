<?php

class CreatePoll extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->createPollModel = $this->model("createPollModel");
    }

    public function index($sessionId)
    {
        $data["bread"]["sessionDetails"] = $this->createPollModel->getSessionDetails($sessionId);

        $data["sessionId"] = $sessionId;
        $this->view("lecturer/createPollView", $data);
    }

    public function mcq($sessionId)
    {
        $data["bread"]["sessionDetails"] = $this->createPollModel->getSessionDetails($sessionId);

        $data["questionType"] = "mcq";

        //Form submission - START
        $errors = array();

        $errors["duration"] = "";

        //Mcq
        $errors["question"] = "";
        $errors["answer"] = "";
        $errors["answer-1"] = "";
        $errors["answer-2"] = "";
        $errors["answer-3"] = "";
        $errors["answer-4"] = "";
        $errors["answer-5"] = "";

        //True & False question
        $errors["tf-question"] = "";

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // var_dump($_POST);
            // return 0;
            $questionType = $_POST["question-type"];
            $duration = $_POST["quiz-dur"];;
            $answer = $_POST["correct-answer"];

            $data["questionType"] = $questionType;

            if (empty($duration)) $errors["duration"] = "Duration is required";
            if (empty($answer)) $errors["answer"] = "Correct answer is required";

            if ($questionType == "mcq") {
                $question = $_POST["question"];

                //Becase there must atleast two answers in a question
                $answer1 = $_POST["answer-1"];
                $answer2 = $_POST["answer-2"];

                //Empty check
                if (empty($question)) $errors["question"] = "Question is required";
                if (empty($answer1)) $errors["answer-1"] = "Answer is required";
                if (empty($answer2)) $errors["answer-2"] = "Answer is required";
            } else if ($questionType == "open") {
                $question = $_POST["tf-question"];
                $answer1 = "TRUE";
                $answer2 = "FALSE";

                //Empty check
                if (empty($question)) $errors["tf-question"] = "Question is required";
            }

            /* Count number of validation failures */
            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                $quizDur = explode(":", $duration);

                $durHr = $quizDur[0];
                $durMin = $quizDur[1];
                $durSec = $quizDur[2];

                if ($questionType == "mcq") {
                    $questionId = $this->createPollModel->addQuestion($sessionId, "mcq", $question, $answer, $durHr, $durMin, $durSec);
                    $this->createPollModel->addAnswer($questionId, $sessionId, $answer1);
                    $this->createPollModel->addAnswer($questionId, $sessionId, $answer2);

                    for ($i = 3; $i <= 5; $i++) {
                        if (!empty($_POST["answer-{$i}"])) {
                            $answer = $_POST["answer-{$i}"];
                            $this->createPollModel->addAnswer($questionId, $sessionId, $answer);
                        } else {
                            break;
                        }
                    }
                } else if ($questionType == "open") {
                    $questionId = $this->createPollModel->addQuestion($sessionId, "mcq-tf", $question, $answer, $durHr, $durMin, $durSec);
                    $this->createPollModel->addAnswer($questionId, $sessionId, "TRUE");
                    $this->createPollModel->addAnswer($questionId, $sessionId, "FALSE");
                }
            }
        }

        //Form submission - END

        $data["errors"] = $errors;
        $this->view("lecturer/createPollMCQView", $data);
    }

    public function openText($sessionId)
    {
        $data["bread"]["sessionDetails"] = $this->createPollModel->getSessionDetails($sessionId);

        $errors["duration"] = "";
        $errors["question"] = "";
        $errors["answer"] = "";

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $question = $_POST["question"];
            $duration = $_POST["quiz-dur"];
            $answer = $_POST["correct-answer"];

            if (empty($duration)) $errors["duration"] = "Duration is required";
            if (empty($question)) $errors["question"] = "Question is required";
            if (empty($answer)) $errors["answer"] = "Correct answer is required";


            /* Count number of validation failures */
            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                $quizDur = explode(":", $duration);

                $durHr = $quizDur[0];
                $durMin = $quizDur[1];
                $durSec = $quizDur[2];


                $this->createPollModel->addQuestion($sessionId, "open", $question, $answer, $durHr, $durMin, $durSec);
            }
        }

        $data["errors"] = $errors;
        $this->view("lecturer/createPollOpenTextView", $data);
    }
}
