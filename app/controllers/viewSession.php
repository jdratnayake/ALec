<?php

class ViewSession extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->viewSessionModel = $this->model("viewSessionModel");
    }

    public function index($sessionId)
    {
        $data["sessionData"] = $this->viewSessionModel->getSessionDetails($sessionId);
        $data["questionDetails"] = $this->viewSessionModel->getSessionQuestions($sessionId);
        $data["forumQuestionDetails"] = $this->viewSessionModel->getSessionForumQuestions($sessionId);
        $data["questionIdArray"] = $this->createQuestionIdArray($sessionId, 2);

        $this->view("lecturer/viewSessionView", $data);
    }

    //Change session status
    public function changeStatus($sessionId, $status)
    {
        $this->viewSessionModel->setStatus($sessionId, $status);
    }

    public function changeQuestionStatus($sessionId, $questionId, $status)
    {
        $this->viewSessionModel->setQuestionStatus($sessionId, $questionId, $status);
    }

    public function deleteSession($sessionId)
    {
        $this->viewSessionModel->deleteSession($sessionId);
        $this->redirect("displaySessionsList/index");
    }

    public function deleteSessionQuestion($sessionId, $questionId)
    {
        $this->viewSessionModel->deleteSessionQuestion($questionId);
        $this->redirect("viewSession/index/{$sessionId}");
    }

    public function sessionForum($sessionId)
    {
        $data["bread"]["sessionDetails"] = $this->viewSessionModel->getSessionDetails($sessionId);

        $data["resolvedCount"] = $this->viewSessionModel->getResolvedCount($sessionId);
        $data["unResolvedCount"] = $this->viewSessionModel->getUnResolvedCount($sessionId);
        $data["questionDetails"] = $this->viewSessionModel->getForumQuestionDetails($sessionId);
        $data["questionIdArray"] = $this->createQuestionIdArray($sessionId);

        $this->view("lecturer/sessionLiveForumLecturerView", $data);
    }

    function createQuestionIdArray($sessionId, $version = "1")
    {
        if ($version == "1") {
            $questionIds = $this->viewSessionModel->getQuestionIds($sessionId);
        } else if ($version == "2") {
            $questionIds = $this->viewSessionModel->getSessionForumQuestions($sessionId);
        }

        $questionIdArray = "";

        while ($row = mysqli_fetch_assoc($questionIds)) {
            $questionIdArray .= "_" . $row["question_id"];
        }

        $questionIdArray = trim($questionIdArray, "_");

        return $questionIdArray;
    }

    function getQuestionIdArray($sessionId, $version = "1")
    {
        echo $this->createQuestionIdArray($sessionId, $version);
    }

    function createForumQuestions($sessionId)
    {
        $questionDetails = $this->viewSessionModel->getForumQuestionDetails($sessionId);
        $output = "";

        while ($row = mysqli_fetch_assoc($questionDetails)) {
            $iconClassName = "check-resolved";
            $labelClassName = "resolved-label-hide";

            if ($row["resolved_status"] == "1") {
                $iconClassName = "resolved";
                $labelClassName = "";
            }

            $output .=
                "
                <div class='question'>
                    <input type='hidden' value='{$row['question_id']}'>
                    <span class='text'>
                        {$row['question']}
                        <span class='name'>{$row["name"]}</span>
                        <span class='name'>{$row['post_time']}</span>
                    </span>
                    <span class='vote'>
                        <div class='col'>
                            <i class='fa fa-check-circle $iconClassName' aria-hidden='true'></i>
                            <span class='resolved-label $labelClassName'>Resolved</span>
                        </div>
                        <div class='col'>
                            <i class='fa fa-thumbs-o-up vote-highlight' aria-hidden='true'></i>
                            <span class='votes-count'>{$row['points']}</span>
                        </div>
                    </span>
                </div>
            ";
        }

        echo $output;
    }

    function createForumQuestionsForViewSession($sessionId)
    {
        $output = "";

        $questionDetails = $this->viewSessionModel->getSessionForumQuestions($sessionId);

        $className = "style='display:none'";

        if (mysqli_num_rows($questionDetails) == 0) {
            $className = "";
        }


        $output .=
            "
            <span class='session-label link-label'>
                <a href='" . BASEURL . "/viewSession/sessionForum/{$sessionId}'>
                    Live Forum
                </a>
            </span>

            <span class='session inactive' {$className}>No questions to show</span>
        ";


        while ($row = mysqli_fetch_assoc($questionDetails)) {
            $output .=
                "
            <span class='session'>
                {$row['question']}
                <span class='vote'>
                    <div class='col'>
                        <input type='hidden' value='{$row['question_id']}'>
                        <i class='fa fa-check-circle check-resolved' aria-hidden='true'></i>
                    </div>
                    <div class='col'>
                        <i class='fa fa-thumbs-o-up vote-highlight' aria-hidden='true'></i>
                        <span class='votes-count'>{$row['points']}</span>
                    </div>
                </span>
            </span>
            ";
        }

        echo $output;
    }

    public function checkSessionActiveQuestion($sessionId)
    {
        echo $this->viewSessionModel->getSessionActiveQuestion($sessionId);
    }

    public function changeQuestionResolveStatus($questionId, $status)
    {
        $this->viewSessionModel->setQuestionResolveStatus($questionId, $status);
    }

    public function updateSessionName($sessionId)
    {
        // print_r($_POST);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $sessionName = $_POST["sessionName"];

            $this->viewSessionModel->updateSessionName($sessionId, $sessionName);
        }

        $this->redirect("viewSession/index/{$sessionId}");
    }

    public function updateSessionQuestionStatus($sessionId, $status)
    {
        $this->viewSessionModel->updateSessionQuestionStatus($sessionId, $status);
    }
}
