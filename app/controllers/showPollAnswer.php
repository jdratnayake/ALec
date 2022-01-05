<?php

class ShowPollAnswer extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->showPollAnswer = $this->model("ShowPollAnswerModel");
    }

    public function index($questionId)
    {
        $data["bread"]["sessionDetails"] = $this->showPollAnswer->getSessionDetails($questionId);
        $data["question"] = $this->showPollAnswer->getQuestion($questionId);

        $type = $data["question"]["question_type"];

        if ($type == "mcq" || $type == "mcq-tf") {
            $data["answers"] = $this->showPollAnswer->getMcqAnswers($questionId);

            $this->view("lecturer/showPollAnswerMcqView", $data);
        } else if ($type == "open") {
            $data["answers"] = $this->showPollAnswer->getOpenAnswers($questionId);

            $this->view("lecturer/showPollAnswerOpenTextView", $data);
        }
    }
}
