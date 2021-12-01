<?php

class LecturerForumTopicDiscussion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->lecturerForumTopicDiscussionModel = $this->model("lecturerForumTopicDiscussionModel");
    }

    public function index($topicId)
    {
        $data["bread"]["forumDetails"] = $this->lecturerForumTopicDiscussionModel->getForumDetails($topicId);
        $data["topicDetail"] = $this->lecturerForumTopicDiscussionModel->getTopicDetails($topicId);

        $userId = $this->getSession("userId");

        $data["userDetail"] = $this->lecturerForumTopicDiscussionModel->getUserDetails($userId);
        $data["replyDetails"] = $this->lecturerForumTopicDiscussionModel->getReplyDetails($topicId);
        $data["pointsGivenReply"]  = $this->lecturerForumTopicDiscussionModel->getPointsGivenReply($userId, $topicId);

        $this->view("lecturer/lecturerForumTopicDiscussionView", $data);
    }

    public function submit($topicId)
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $reply = $_POST["reply-text"];
            $userId = $this->getSession("userId");

            $this->lecturerForumTopicDiscussionModel->insertReply($topicId, $reply, $userId);
        }

        $this->redirect("lecturerForumTopicDiscussion/index/{$topicId}");
    }

    public function deleteTopic($topicId)
    {
        $courseId = $this->lecturerForumTopicDiscussionModel->deleteTopic($topicId);

        $this->redirect("lecturerForumTopic/index/{$courseId}");
    }

    public function deleteReply($replyId)
    {
        $topicId = $this->lecturerForumTopicDiscussionModel->deleteReply($replyId);

        $this->redirect("lecturerForumTopicDiscussion/index/{$topicId}");
    }

    public function toggleMarksReply($replyId, $signal)
    {
        $userId = $this->getSession("userId");
        $this->lecturerForumTopicDiscussionModel->changeMarksReply($userId, $replyId, $signal);
    }
}
