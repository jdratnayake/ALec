<?php

class LecturerForumTopic extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->lecturerForumTopicModel = $this->model("lecturerForumTopicModel");
    }

    public function index($courseId)
    {
        $data["forumDetails"] = $this->lecturerForumTopicModel->getForumDetails($courseId);

        $this->view("lecturer/lecturerForumTopicView", $data);
    }
}
