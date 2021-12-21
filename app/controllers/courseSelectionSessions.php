<?php

class CourseSelectionSessions extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->courseSelectionSessionsModel = $this->model("courseSelectionSessionsModel");
    }

    public function index()
    {
        $this->view("student/courseSelectionSessionsView");
    }
}
