<?php

class CreateQuizDashboard extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->createQuizDashboardModel = $this->model("createQuizDashboardModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");
        $data["courseDetails"] = $this->createQuizDashboardModel->getCourseDetails($userId);


        $this->view("lecturer/createQuizDashboardView", $data);
    }

    public function submit()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            // var_dump(array_filter($_POST));
            $count = $_POST["type"];

            $quizName = $_POST["quiz-name"];
            $status = "false";
            $lecturerId = $this->getSession("userId");
            $topicId = $_POST["topic"];
            $durHr = $_POST["quiz-dur-hr"];
            $durMin = $_POST["quiz-dur-min"];

            // echo "<h3 align = 'center'>" . $count . "</h1>";
            // echo "<h3 align = 'center'>" . $lecturerId . "</h1>";
            // echo "<h3 align = 'center'>" . $topicId . "</h1>";
            // echo "<h3 align = 'center'>" . $quizName . "</h1>";
            // echo "<h3 align = 'center'>" . $durHr . "</h1>";
            // echo "<h3 align = 'center'>" . $durMin . "</h1>";

            $quizId = $this->createQuizDashboardModel->insertQuizData($quizName, $status, $durHr, $durMin, $lecturerId, $topicId);
            // echo "<h1 align = 'center'>" . $quizId . "</h1>";

            for ($questionNo = 1; $questionNo <= $count; $questionNo++) {
                $question = "";
                $questionType = $_POST["q{$questionNo}_type"];

                if ($questionType == "value_mcq") {
                    $questionType = "mcq";
                    $question = $_POST["q{$questionNo}_mcq"];
                } else if ($questionType == "value_short") {
                    $questionType = "short ans";
                    $question = $_POST["q{$questionNo}_short"];
                }

                // echo "<h3 align = 'center'>" . $questionType . "</h1>";
                // echo "<h3 align = 'center'>" . $question . "</h1>";

                $this->createQuizDashboardModel->insertQuizQuestion($questionNo, $quizId, $question, $questionType);

                if ($questionType == "mcq") {
                    $choiceNo = 1;

                    while (
                        isset($_POST["q{$questionNo}_answer{$choiceNo}"]) and
                        !empty($_POST["q{$questionNo}_answer{$choiceNo}"])
                    ) {
                        $choice = $_POST["q{$questionNo}_answer{$choiceNo}"];
                        $points = $_POST["q{$questionNo}_answer{$choiceNo}_point"];

                        // echo "<h3 align = 'center'>" . $choiceNo . "</h1>";
                        // echo "<h3 align = 'center'>" . $choice . "</h1>";
                        // echo "<h3 align = 'center'> points:" . $points . "</h1>";
                        $this->createQuizDashboardModel->insertChoice($choiceNo, $questionNo, $quizId, $choice, $points);
                        $choiceNo++;
                    }
                } else if ($questionType == "short ans") {
                    $choice = $_POST["q{$questionNo}_shortanswer"];
                    $points = $_POST["q{$questionNo}_shortanswer_point"];
                    $this->createQuizDashboardModel->insertChoice("1", $questionNo, $quizId, $choice, $points);
                }
            }
        }
    }

    public function topic($courseId)
    {
        echo $this->createQuizDashboardModel->getTopicDetails($courseId);
    }
}
