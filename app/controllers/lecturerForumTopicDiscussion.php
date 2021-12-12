<?php

class LecturerForumTopicDiscussion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->lecturerForumTopicDiscussionModel = $this->model("lecturerForumTopicDiscussionModel");
        $this->notificationBasicModel = $this->model("notificationBasicModel");
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

            $row = $this->lecturerForumTopicDiscussionModel->insertReply($topicId, $reply, $userId);
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
