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
        $data["sessionData"] = $this->viewSessionModel->getSessionDetails($sessionId);
        $this->view("lecturer/viewSessionView", $data);
    }

    public function changeStatus($sessionId, $status)
    {
        $this->viewSessionModel->setStatus($sessionId, $status);
    }
}
