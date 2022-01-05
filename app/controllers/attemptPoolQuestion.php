<?php

class AttemptPoolQuestion extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->attemptPoolQuestionModel = $this->model("attemptPoolQuestionModel");
    }

    public function index($courseId)
    {
        $userId = $this->getSession("userId");

        $sessionId = $this->attemptPoolQuestionModel->getSessionId($courseId);
        $data["sessionDetails"] = $this->attemptPoolQuestionModel->getSessionDetails($sessionId);
        $data["questionStatus"] = $this->attemptPoolQuestionModel->getActiveQuestionId($userId, $sessionId);
        $data["question"] = $this->attemptPoolQuestionModel->getQuestion($sessionId);
        $data["answers"] = $this->attemptPoolQuestionModel->getAnswers($sessionId);

        $this->view("student/attemptPoolQuestionView", $data);
    }

    //Functions that are need for realtime question update

    public function getActiveQuestionId($sessionId)
    {
        $userId = $this->getSession("userId");

        echo $this->attemptPoolQuestionModel->getActiveQuestionId($userId, $sessionId);
    }

    public function getActiveQuestion($sessionId)
    {
        $question = $this->attemptPoolQuestionModel->getQuestion($sessionId);
        $answers = $this->attemptPoolQuestionModel->getAnswers($sessionId);

        $output = "";

        $type = $question["question_type"];

        $output .=
            "
                <div class='content' id='question-content'>
                    <input type='hidden' id='total-time' value='{$question['total_duration']}'>
                    <input type='hidden' id='close-time' value='{$question['cancel_time']}'>

                    <div class='bar-div'>
                        <div id='time-bar' class='time-bar'></div>
                    </div>
                    <div class='time-div'>
                        <p id='time-display'></p>
                        <p> remaining</p>
                    </div>

                    <div class='questions-container'>
                ";

        if ($type == "mcq" or $type == "mcq-tf") {
            $output .=
                "
                        <span class='question'>
                            {$question["question"]}
                        </span>
                    ";

            while ($row = mysqli_fetch_assoc($answers)) {
                $output .=
                    "
                        <span class='answer'>
                            <input type='radio' onclick='setAnswer(this)' id='answer-1' name='answer' value='{$row['choice_id']}'>
                            <label for='answer-1'>{$row['choice_name']}</label>
                        </span>
                        ";
            }
        } else if ($type == "open") {
            $output .=
                "
                    <label for='question'>{$question["question"]}</label>
                    <input type='text' class='question' placeholder='Enter your answer here...' id='open-question'>
                    ";
        }

        $output .=
            "
                    </div>

                    <div class='button-container'>
                        <form method='POST' action='http://localhost/ALec/displayPoll/index' id='poll-form'>
                            <input type='hidden' id='question-id' name='question-id' value='{$question['question_no']}'>
                            <input type='hidden' id='question-type' name='question-type' value='{$type}'>
                            <input type='hidden' id='answer-id' name='answer-id' value=''>
                            <button type='submit' value='Create Session' class='save-btn'>Done</button>
                        </form>
                    </div>
                </div>
                ";


        $output .=
            "
                <div class='content' id='session-question-status' style='display: none'>
                    <div class='content-message'>
                        <i class='fa fa-spinner' aria-hidden='true'></i>
                        No active polls to show
                    </div>
                </div>
                ";

        echo $output;
        // echo "<h1> Janitha </h1>";
    }
}
