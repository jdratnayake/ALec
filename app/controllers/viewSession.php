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
        $data["questionDetails"] = $this->viewSessionModel->getSessionQuestions($sessionId);
        $data["forumQuestionDetails"] = $this->viewSessionModel->getSessionForumQuestions($sessionId);

        $this->view("lecturer/viewSessionView", $data);
    }

    //Change session status
    public function changeStatus($sessionId, $status)
    {
        $this->viewSessionModel->setStatus($sessionId, $status);
    }

    public function changeQuestionStatus($sessionId, $questionId, $status)
    {
        $this->viewSessionModel->setQuestionStatus($sessionId, $questionId, $status);
    }
}
