<?php

class askForumQuestion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec", "stu");
        $this->helper("linker");
        $this->askForumQuestionModel = $this->model("askForumQuestionModel");
    }

    public function index($forumId)
    {
        // $errors["subject"] = "";
        // $errors["question"] = "";
        // $data["errors"] = $errors;

        $data["forumId"] = $forumId;
        $data["userType"] = $this->getSession("type");

        $this->view("components/askForumQuestionView", $data);
    }

    public function submit()
    {
        var_dump($_POST);
    }
}
