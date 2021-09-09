<?php

class LecturerDashboard extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
    }

    public function index()
    {
        $this->view("lecturer/lecturerDashboardView");
    }
}
