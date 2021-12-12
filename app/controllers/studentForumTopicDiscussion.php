<?php

class StudentForumTopicDiscussion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->studentForumTopicDiscussionModel = $this->model("studentForumTopicDiscussionModel");
        $this->notificationBasicModel = $this->model("notificationBasicModel");
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
            //Get the display name of the user
            if (isset($_POST["name-toggle"])) {
                $userName = $this->notificationBasicModel->getStudentRandomName($userId);
            } else {
                $userName = $this->notificationBasicModel->getUserRealName($userId);
            }

            $courseId = $this->notificationBasicModel->getCourseId($topicId);
            $courseName = $this->notificationBasicModel->getCourseName($courseId);
            $postTime = $row["post_time"];
            $message = $userName . " replied to forum disscussion";

            $studentLink = BASEURL . "/studentForumTopicDiscussion/index/{$topicId}";
            $lecturerLink = BASEURL . "/lecturerForumTopicDiscussion/index/{$topicId}";

            $this->notificationBasicModel->setForumTopicNotificationStudent($courseName, $studentLink, $postTime, $courseId, $message);

            $this->notificationBasicModel->setForumTopicNotificationLecturer($courseName, $lecturerLink, $postTime, $courseId, $message);

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
