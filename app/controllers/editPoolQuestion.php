<?php

class EditPoolQuestion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->editPoolQuestionModel = $this->model("editPoolQuestionModel");
    }

    public function index($questionNo)
    {
        $data["questionDetails"] = $this->editPoolQuestionModel->getQuestionDetails($questionNo);

        $sessionId = $data["questionDetails"]["session_id"];
        $data["bread"]["sessionDetails"] = $this->editPoolQuestionModel->getSessionDetails($sessionId);

        if ($data["questionDetails"]["question_type"] == "mcq") {
            $this->view("lecturer/editPollMcqView", $data);
        } else if ($data["questionDetails"]["question_type"] == "mcq-tf") {
            $this->view("lecturer/editPollMcqTfView", $data);
        } else if ($data["questionDetails"]["question_type"] == "open") {
            $this->view("lecturer/editPollOpenTextView", $data);
        }
    }
}
