<?php

class CreateSession extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
    }

    public function index()
    {
        // $this->view("components/courseSelectionView");
        // $this->view("components/displayPoll-MCQ");
        // $this->view("components/displayPoll-OpenText");
        // $this->view("components/sessionLiveForum");
        // $this->view("components/showPollAnswer-mcq");
        // $this->view("components/showPollAnswer-openText");

        // $this->view("lecturer/createPoll");
        // $this->view("lecturer/createPollMCQ");
        // $this->view("lecturer/createPollOpenText");
        // $this->view("lecturer/createSession");
        // $this->view("lecturer/displaySessions");
        // $this->view("lecturer/sessionQuickQuestionView");
        // $this->view("lecturer/viewRespondents");
        $this->view("lecturer/viewSession");
    }
}
