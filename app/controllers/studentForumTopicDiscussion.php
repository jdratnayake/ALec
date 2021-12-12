<?php

class StudentForumTopicDiscussion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->studentForumTopicDiscussionModel = $this->model("studentForumTopicDiscussionModel");
    }

    public function index($topicId)
    {
        $userId = $this->getSession("userId");

        $data["bread"]["forumDetails"] = $this->studentForumTopicDiscussionModel->getForumDetails($topicId);
        $data["topicDetail"] = $this->studentForumTopicDiscussionModel->getTopicDetails($topicId);
        $data["userDetail"] = $this->studentForumTopicDiscussionModel->getUserDetails($userId);
        $data["replyDetails"] = $this->studentForumTopicDiscussionModel->getReplyDetails($topicId);

        $this->view("student/studentForumTopicDiscussionView", $data);
    }

    public function submit($topicId)
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $reply = $_POST["reply-text"];
            $userId = $this->getSession("userId");

            if (isset($_POST["name-toggle"])) {
                $row = $this->studentForumTopicDiscussionModel->insertReply($topicId, $reply, $userId, "T");
            } else {
                $row = $this->studentForumTopicDiscussionModel->insertReply($topicId, $reply, $userId, "F");
            }

            // Notification - START
            $replyId = $row["reply_id"];
            $postTime = $row["post_time"];


            // Notification - END
        }

        $this->redirect("studentForumTopicDiscussion/index/{$topicId}");
    }

    // public function deleteTopic($topicId)
    // {
    //     $courseId = $this->studentForumTopicDiscussionModel->deleteTopic($topicId);

    //     $this->redirect("lecturerForumTopic/index/{$courseId}");
    // }

    // public function deleteReply($replyId)
    // {
    //     $topicId = $this->studentForumTopicDiscussionModel->deleteReply($replyId);

    //     $this->redirect("lecturerForumTopicDiscussion/index/{$topicId}");
    // }
}
