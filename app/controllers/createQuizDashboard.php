<?php

class CreateQuizDashboard extends AlecFramework
{
    public function __construct()
    {
        // $this->authorization("lec");
        $this->helper("linker");
        $this->createQuizDashboardModel = $this->model("createQuizDashboardModel");
    }

    public function index()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            // var_dump($_POST);
            // return true;

            // Determine quiz is drafted or complete
            if (isset($_POST["create-quiz"])) {
                $status = "create";
            } else if (isset($_POST["draft-quiz"])) {
                $status = "draft";
            }

            // Question count
            $count = $_POST["type"];

            $quizName = $_POST["quiz-name"];
            $lecturerId = $this->getSession("userId");
            $topicId = $_POST["topic"];

            $quizDur = explode(":", $_POST["quiz-dur"]);

            $durHr = $quizDur[0];
            $durMin = $quizDur[1];

            // echo "<h3 align = 'center'>" . $count . "</h1>";
            // echo "<h3 align = 'center'>" . $lecturerId . "</h1>";
            // echo "<h3 align = 'center'>" . $topicId . "</h1>";
            // echo "<h3 align = 'center'>" . $quizName . "</h1>";
            // echo "<h3 align = 'center'>" . $durHr . "</h1>";
            // echo "<h3 align = 'center'>" . $durMin . "</h1>";

            $quizId = $this->createQuizDashboardModel->insertQuizData($quizName, $status, $durHr, $durMin, $lecturerId, $topicId);
            // echo "<h1 align = 'center'>" . $quizId . "</h1>";

            // Insert questions
            for ($questionNo = 1; $questionNo <= $count; $questionNo++) {
                $question = "";
                $questionType = $_POST["q{$questionNo}_type"];

                if ($questionType == "value_mcq") {
                    if ($_POST["quiz_{$questionNo}_check"] == "true") {
                        $questionType = "mcq-m";
                    } else if ($_POST["quiz_{$questionNo}_check"] == "false") {
                        $questionType = "mcq-s";
                    }

                    $question = $_POST["q{$questionNo}_mcq"];
                } else if ($questionType == "value_short") {
                    $questionType = "short ans";
                    $question = $_POST["q{$questionNo}_short"];
                }

                // echo "<h3 align = 'center'>" . $questionType . "</h1>";
                // echo "<h3 align = 'center'>" . $question . "</h1>";

                $questionId = $this->createQuizDashboardModel->insertQuizQuestion($quizId, $question, $questionType);

                if ($questionType == "mcq-s" || $questionType == "mcq-m") {
                    $choiceNo = 1;

                    // Insert choices
                    while (
                        isset($_POST["q{$questionNo}_answer{$choiceNo}"]) and
                        !empty($_POST["q{$questionNo}_answer{$choiceNo}"])
                    ) {
                        $choice = $_POST["q{$questionNo}_answer{$choiceNo}"];

                        if (
                            !isset($_POST["q{$questionNo}_answer{$choiceNo}_point"]) or
                            empty($_POST["q{$questionNo}_answer{$choiceNo}_point"])
                        ) {
                            $points = "0";
                        } else {
                            $points = $_POST["q{$questionNo}_answer{$choiceNo}_point"];
                        }



                        // echo "<h3 align = 'center'>" . $choiceNo . "</h1>";
                        // echo "<h3 align = 'center'>" . $choice . "</h1>";
                        // echo "<h3 align = 'center'> points:" . $points . "</h1>";
                        $this->createQuizDashboardModel->insertChoice($questionId, $quizId, $choice, $points);
                        $choiceNo++;
                    }
                } else if ($questionType == "short ans") {
                    $choice = $_POST["q{$questionNo}_shortanswer"];
                    $points = $_POST["q{$questionNo}_shortanswer_point"];
                    $this->createQuizDashboardModel->insertChoice($questionId, $quizId, $choice, $points);
                }
            }

            if ($status == "create") {
                $this->redirect("previewQuiz/index/{$quizId}");
            } else if ($status == "draft") {
            }
        }

        $userId = $this->getSession("userId");
        $data["courseDetails"] = $this->createQuizDashboardModel->getCourseDetails($userId);
        $this->view("lecturer/createQuizDashboardView", $data);
    }

    // Return topics of particular course
    public function topic($courseId)
    {
        echo $this->createQuizDashboardModel->getTopicDetails($courseId);
    }
}
