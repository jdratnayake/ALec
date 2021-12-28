<?php

class DisplayPoll extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->displayPollModel = $this->model("displayPollModel");
    }

    public function index()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $userId = $this->getSession("userId");
            $questionId = $_POST["question-id"];
            $type = $_POST["question-type"];
            $answer = $_POST["answer-id"];

            if ($type == "mcq" or $type == "mcq-tf") {
                $this->displayPollModel->insertMcqAttempt($userId, $questionId, $answer);
            } else if ($type == "open") {
                $this->displayPollModel->insertOpenAttempt($userId, $questionId, $answer);
            }

            $this->display($type, $questionId);
        }
    }

    public function display($type, $questionId)
    {
        $data["bread"]["sessionDetails"] = $this->displayPollModel->getCourseId($questionId);

        if ($type == "mcq" or $type == "mcq-tf") {
            $data["question"] = $this->displayPollModel->getQuestion($questionId);
            $data["answers"] = $this->displayPollModel->getMcqAnswers($questionId);

            $this->view("student/showPollAnswerMcqView", $data);
        } else if ($type == "open") {

            $this->view("student/showPollAnswerOpenTextView");
        }
    }
}
