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
        $this->view("lecturer/displaySessions");
        // $this->view("lecturer/createSession");
        // $this->view("components/courseSelectionView");
    }
}
