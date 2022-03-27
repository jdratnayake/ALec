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
        $userId = $this->getSession("userId");

        $data["bread"]["sessionDetails"] = $this->sessionLiveForumStudentModel->getSessionDetails($sessionId);

        $errors = array();
        $errors["question"] = "";

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // var_dump($_POST);
            // return 0;

            $question = $_POST["new-question"];
            $studentId = $userId;

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

        $data["userId"] = $userId;
        $data["questionIdArray"] = $this->createQuestionIdArray($sessionId);
        $data["questionDetails"] = $this->sessionLiveForumStudentModel->getForumQuestionDetails($sessionId, $userId);

        $this->view("student/sessionLiveForumStudentView", $data);
    }

    function changeVote($questionId)
    {
        $userId = $this->getSession("userId");

        $this->sessionLiveForumStudentModel->changeVote($questionId, $userId);
    }

    function createQuestionIdArray($sessionId)
    {
        $questionIds = $this->sessionLiveForumStudentModel->getQuestionIds($sessionId);

        $questionIdArray = "";

        while ($row = mysqli_fetch_assoc($questionIds)) {
            $questionIdArray .= "_" . $row["question_id"];
        }

        $questionIdArray = trim($questionIdArray, "_");

        return $questionIdArray;
    }

    function getQuestionIdArray($sessionId)
    {
        echo $this->createQuestionIdArray($sessionId);
    }

    function createForumQuestions($sessionId)
    {
        $userId = $this->getSession("userId");
        $questionDetails = $this->sessionLiveForumStudentModel->getForumQuestionDetails($sessionId, $userId);
        $output = "";

        while ($row = mysqli_fetch_assoc($questionDetails)) {

            if ($row['student_id'] != $userId && $row['random_status'] == "T") {
                $name = $row["random_name"];
            } else {
                $name = $row["name"];
            }

            if ($row['vote_status'] != "") {
                $styleName = "style='color: orange;'";
            } else {
                $styleName = "";
            }

            $output .=
                "
            <div class='question'>
                <input type='hidden' value='{$row['question_id']}'>
                <span class='text'>
                    {$row['question']}
                    <span class='name'>{$name}</span>
                    <span class='name'>{$row['post_time']}</span>
                </span>
                <span class='vote'>
                    <div class='col'>
                        <i class='fa fa-thumbs-o-up vote-highlight' aria-hidden='true' {$styleName}></i>
                        <span class='votes-count'>{$row['points']}</span>
                    </div>
                </span>
            </div>
            ";
        }

        echo $output;
    }
}
