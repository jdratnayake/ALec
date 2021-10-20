<?php

class LecturerForumTopicDiscussion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->lecturerForumTopicDiscussionModel = $this->model("lecturerForumTopicDiscussionModel");
    }

    public function index()
    {
        $this->view("lecturer/lecturerForumTopicDiscussionView");
    }
}
