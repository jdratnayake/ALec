<?php

class Review extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->reviewModel = $this->model("reviewModel");
    }

    //Display results of the quizzes
    public function index()
    {
        $userId = $this->getSession("userId");

        $data["courseDetails"] = $this->reviewModel->getEnrolledCourses($userId);
        $data["quizDetails"] = $this->reviewModel->getQuizDetails($userId);
        $this->view("lecturer/reviewQuizListView", $data);
    }

    //Display results of the quizzes according to a specific course [Dropdown]
    public function updateQuizList($courseId)
    {
        $userId = $this->getSession("userId");

        $quizDetails = $this->reviewModel->getQuizDetails($userId, $courseId);

        $output = "";

        while ($row = mysqli_fetch_assoc($quizDetails)) {
            $output .=
                "
            <div class='quiz'>
                <div class='quiz-details'>
                    <a href='http://localhost/ALec/review/quizReview/{$row['quiz_id']}' class='quiz-name'><span>{$row['quiz_name']}</span></a>
                </div>
                <div class='quiz-course'>{$row['course_name']}</div>
                <span class='quiz-created-date' style='text-decoration: none; font-size: 10px'>
                {$row['date']}
                </span>
            </div>
            ";
        }

        echo $output;
    }

    // Display results and charts of a specific quiz
    public function quizReview($quizId)
    {
        $quizDetails = $this->reviewModel->getQuizNameAndCourseID($quizId);
        $data["bread"]["quizName"] = $quizDetails["quiz_name"];

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

        $data["courseId"] = $quizDetails["course_id"];

        $data["quizQuestionSummary"]["label"] = trim($labelQuistionString, "_");
        $data["quizQuestionSummary"]["data"] = trim($valueQuistionString, "_");
        // Quiz question summary - END

        $data["studentsResults"] = $this->reviewModel->getStudentsResults($quizId);

        $this->view("lecturer/reviewQuizView", $data);
    }
}
