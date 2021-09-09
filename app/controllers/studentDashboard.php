<?php

class StudentDashboard extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
    }

    public function index()
    {
        $this->view("student/studentDashboardView");
    }
}
