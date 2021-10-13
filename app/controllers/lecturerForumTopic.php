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
        $data["topicDiscussionDetails"] =
            $this->lecturerForumTopicModel->getTopicDiscussionDetails($data["forumDetails"]["forum_id"]);

        $data["replyDiscussionDetails"] =
            $this->lecturerForumTopicModel->getReplyDiscussionDetails($data["forumDetails"]["forum_id"]);

        $this->view("lecturer/lecturerForumTopicView", $data);
    }
}
