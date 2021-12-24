<?php

class AttemptPoolQuestion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->attemptPoolQuestionModel = $this->model("attemptPoolQuestionModel");
    }

    public function index($sessionId)
    {
    }
}
