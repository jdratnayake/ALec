<?php

class sessionLiveForumStudent extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->sessionLiveForumStudentModel = $this->model("sessionLiveForumStudentModel");
    }

    public function index($sessionId)
    {
        $data["bread"]["sessionDetails"] = $this->sessionLiveForumStudentModel->getSessionDetails($sessionId);

        $errors = array();
        $errors["question"] = "";

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // var_dump($_POST);
            // return 0;

            $question = $_POST["new-question"];
            $studentId = $this->getSession("userId");

            if (empty($question)) $errors["question"] = "Question is required";

            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                if (isset($_POST["name-toggle"])) {
                    $this->sessionLiveForumStudentModel->insertSessionQuestion($question, $sessionId, $studentId, "T");
                } else {
                    $this->sessionLiveForumStudentModel->insertSessionQuestion($question, $sessionId, $studentId, "F");
                }
            }
        }

        $data["errors"] = $errors;

        $this->view("student/sessionLiveForumStudentView", $data);
    }
}
