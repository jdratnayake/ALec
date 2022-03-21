<?php

class Temp extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->tempModel = $this->model("tempModel");
    }

    public function index()
    {
        $quizId = "121";

        // Quiz summary - START
        $quizSummary = $this->tempModel->getQuizSummary($quizId);

        $labelString = "";
        $valueString = "";

        while ($row = mysqli_fetch_assoc($quizSummary)) {
            $labelString .= "_" . $row["name"];
            $valueString .= "_" . $row["count"];
        }

        $data["quizSummary"]["label"] = trim($labelString, "_");
        $data["quizSummary"]["data"] = trim($valueString, "_");
        // Quiz summary - END

        // Quiz question summary - START
        $quizAttemptCount = $this->tempModel->getQuizAttemptCount($quizId);
        $quizQuestionSummary = $this->tempModel->getQuizQuestionSummary($quizId);

        $labelQuistionString = "";
        $valueQuistionString = "";

        $i = 1;
        while ($row = mysqli_fetch_assoc($quizQuestionSummary)) {

            $labelQuistionString .= "_" . "Question {$i}";
            $valueQuistionString .= "_" . (((int)$row["success_rate"]) / (int)$quizAttemptCount);

            $i++;
        }

        $data["quizQuestionSummary"]["label"] = trim($labelQuistionString, "_");
        $data["quizQuestionSummary"]["data"] = trim($valueQuistionString, "_");
        // Quiz question summary - END

        $this->view("testView", $data);
    }
}
