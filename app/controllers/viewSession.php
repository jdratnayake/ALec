<?php

class ViewSession extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->viewSessionModel = $this->model("viewSessionModel");
    }

    public function index($sessionId)
    {
        $this->view("lecturer/viewSessionView");
    }
}
