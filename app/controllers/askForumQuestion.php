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
                    $result = $this->askForumQuestionModel->addTopicDetails($subject, $question, $forumId, $userId, "T");
                } else {
                    $result = $this->askForumQuestionModel->addTopicDetails($subject, $question, $forumId, $userId, "F");
                }


                $courseId = $this->askForumQuestionModel->getCourseId($forumId);

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
