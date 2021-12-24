<?php

class AttemptPoolQuestion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->attemptPoolQuestionModel = $this->model("attemptPoolQuestionModel");
    }

    public function index($courseId)
    {
        $sessionId = $this->attemptPoolQuestionModel->getSessionId($courseId);
        $data["sessionDetails"] = $this->attemptPoolQuestionModel->getSessionDetails($sessionId);

        $this->view("student/attemptPoolQuestionView", $data);
    }
}
