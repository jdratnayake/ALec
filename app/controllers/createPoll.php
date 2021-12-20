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

        //Mcq
        $errors["question"] = "";
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
            $data["questionType"] = $questionType;

            if ($questionType == "mcq") {
                $question = $_POST["question"];
                $answer1 = $_POST["answer-1"];
                $answer2 = $_POST["answer-2"];
                $answer3 = $_POST["answer-3"];
                $answer4 = $_POST["answer-4"];
                $answer5 = $_POST["answer-5"];

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
            }
        }

        //Form submission - END

        $data["errors"] = $errors;
        $this->view("lecturer/createPollMCQView", $data);
    }
}
