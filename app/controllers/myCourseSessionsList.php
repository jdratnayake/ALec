<?php

class MyCourseSessionsList extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->myCourseSessionsListModel = $this->model("myCourseSessionsListModel");
    }

    public function index($courseId)
    {
        $data["bread"]["courseDetails"] = $this->myCourseSessionsListModel->getCourseDetils($courseId);

        $data["sessionsDetails"] = $this->myCourseSessionsListModel->getSessionsSummary($courseId);
        $data["sessionQuestionDetails"] = $this->myCourseSessionsListModel->getSessionQuestions($courseId);

        $this->view("student/myCourseSessionsListView", $data);
    }
}
