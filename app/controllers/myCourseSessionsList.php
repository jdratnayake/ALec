<?php

class MyCourseSessionsList extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->myCourseSessionsListModel = $this->model("myCourseSessionsListModel");
        $this->showPollAnswer = $this->model("showPollAnswerModel");
    }

    // Display polls of the session
    public function index($courseId)
    {
        $data["bread"]["courseDetails"] = $this->myCourseSessionsListModel->getCourseDetils($courseId);

        $data["sessionsDetails"] = $this->myCourseSessionsListModel->getSessionsSummary($courseId);
        $data["sessionQuestionDetails"] = $this->myCourseSessionsListModel->getSessionQuestions($courseId);

        $this->view("student/myCourseSessionsListView", $data);
    }

    // Display poll results with the correct answer
    public function review($questionId)
    {
        $data["bread"]["sessionDetails"] = $this->showPollAnswer->getSessionDetails($questionId);
        $data["bread"]["courseDetails"] = $this->myCourseSessionsListModel->getCourseDetils($data["bread"]["sessionDetails"]["course_id"]);

        $data["question"] = $this->showPollAnswer->getQuestion($questionId);

        $type = $data["question"]["question_type"];

        if ($type == "mcq" || $type == "mcq-tf") {
            $data["answers"] = $this->showPollAnswer->getMcqAnswers($questionId);

            $this->view("student/reviewPollAnswerMcqView", $data);
        } else if ($type == "open") {
            $data["answers"] = $this->showPollAnswer->getOpenAnswers($questionId);

            $this->view("student/reviewPollAnswerOpenTextView", $data);
        }
    }
}
