<?php

class StudentForumTopic extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->studentForumTopicModel = $this->model("studentForumTopicModel");
    }

    public function index($courseId)
    {
        $data["userId"] = $this->getSession("userId");
        $data["forumDetails"] = $this->studentForumTopicModel->getForumDetails($courseId);
        $data["topicDiscussionDetails"] =
            $this->studentForumTopicModel->getTopicDiscussionDetails($data["forumDetails"]["forum_id"]);

        $data["replyDiscussionDetails"] =
            $this->studentForumTopicModel->getReplyDiscussionDetails($data["forumDetails"]["forum_id"]);

        $this->view("student/studentForumTopicView", $data);
    }
}
