<?php

class ShowPollAnswer extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->showPollAnswer = $this->model("ShowPollAnswerModel");
    }

    public function index($questionNo)
    {
        $data["questionDetails"] = $this->showPollAnswer->getQuestionDetails($questionNo);
        $questionType = $data["questionDetails"]["question_type"];

        if ($questionType == "mcq" || $questionType == "mcq-tf") {
            $this->view("lecturer/showPollAnswerMcqView", $data);
        } else if ($questionType == "open") {
            $this->view("lecturer/showPollAnswerOpenTextView", $data);
        }
    }
}
