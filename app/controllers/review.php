<?php

class Review extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->reviewModel = $this->model("reviewModel");
    }

    public function index($courseId = 0)
    {
        $userId = $this->getSession("userId");

        $data["courseDetails"] = $this->reviewModel->getEnrolledCourses($userId);
        $data["quizDetails"] = $this->reviewModel->getQuizDetails($userId);
        $this->view("lecturer/reviewQuizListView", $data);
    }

    public function quizReview($quizId)
    {
        // Quiz summary - START
        $quizSummary = $this->reviewModel->getQuizSummary($quizId);

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
        $quizAttemptCount = $this->reviewModel->getQuizAttemptCount($quizId);
        $quizQuestionSummary = $this->reviewModel->getQuizQuestionSummary($quizId);

        $labelQuistionString = "";
        $valueQuistionString = "";

        if ($quizAttemptCount != "0") {
            $i = 1;
            while ($row = mysqli_fetch_assoc($quizQuestionSummary)) {

                $labelQuistionString .= "_" . "Question {$i}";
                $valueQuistionString .= "_" . (((int)$row["success_rate"]) / (int)$quizAttemptCount);

                $i++;
            }
        }

        $data["quizQuestionSummary"]["label"] = trim($labelQuistionString, "_");
        $data["quizQuestionSummary"]["data"] = trim($valueQuistionString, "_");
        // Quiz question summary - END

        $this->view("lecturer/reviewQuizView", $data);
    }
}
