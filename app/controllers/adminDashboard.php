<?php

class AdminDashboard extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
    }

    public function index()
    {
        $this->view("admin/adminDashboardView");
    }
}
