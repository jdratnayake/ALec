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

        $this->view("lecturer/createPollMCQView", $data);
    }
}
