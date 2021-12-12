<?php

class askForumQuestion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec", "stu");
        $this->helper("linker");
        $this->askForumQuestionModel = $this->model("askForumQuestionModel");
        $this->notificationBasicModel = $this->model("notificationBasicModel");
    }

    public function index($forumId)
    {
        $errors["subject"] = "";
        $errors["question"] = "";

        $data["forumId"] = $forumId;
        $data["courseId"] = $this->askForumQuestionModel->getCourseId($forumId);
        $data["userType"] = $this->getSession("type");
        $data["subjectCode"] = $this->askForumQuestionModel->getSubjectCode($forumId);

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $subject = $_POST["subject"];
            $question = $_POST["question"];

            if (empty($subject)) $errors["subject"] = "Subject is required";
            if (empty($question)) $errors["question"] = "Question is required";

            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                $userId = $this->getSession("userId");

                if (isset($_POST["name-toggle"])) {
                    $row = $this->askForumQuestionModel->addTopicDetails($subject, $question, $forumId, $userId, "T");
                } else {
                    $row = $this->askForumQuestionModel->addTopicDetails($subject, $question, $forumId, $userId, "F");
                }

                // Notification - START

                $topicId = $row["topic_id"];
                $postTime = $row["post_time"];

                $studentLink = BASEURL . "/studentForumTopicDiscussion/index/{$topicId}";
                $lecturerLink = BASEURL . "/lecturerForumTopicDiscussion/index/{$topicId}";


                //Get the display name of the student
                if (isset($_POST["name-toggle"])) {
                    $userName = $this->notificationBasicModel->getStudentRandomName($userId);
                } else {
                    $userName = $this->notificationBasicModel->getUserRealName($userId);
                }

                $message = $userName . " started a new forum discussion";

                $courseId = $this->askForumQuestionModel->getCourseId($forumId);

                $courseName = $this->notificationBasicModel->getCourseName($courseId);

                $this->notificationBasicModel->setForumTopicNotificationStudent($courseName, $studentLink, $postTime, $courseId, $message);

                $this->notificationBasicModel->setForumTopicNotificationLecturer($courseName, $lecturerLink, $postTime, $courseId, $message);

                // Notification - END

                if ($data["userType"] == "lec") {
                    $this->redirect("lecturerForumTopic/index/{$courseId}");
                } else if ($data["userType"] == "stu") {
                    $this->redirect("studentForumTopic/index/{$courseId}");
                }
            }
        }

        $data["errors"] = $errors;
        $this->view("components/askForumQuestionView", $data);
    }
}
