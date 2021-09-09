<?php

class Dashboard extends AlecFramework
{
    public function __construct()
    {
    }

    public function index()
    {
        // echo "<h1 align='center'>" . "Hasfasfasgasgasgasgasgagi" . "</h1>";

        if (isset($_SESSION["userId"]) && isset($_SESSION["type"])) {
            $type = $_SESSION["type"];

            if ($type == "admin") {
                $this->redirect("adminDashboard");
            } else if ($type == "lec") {
                $this->redirect("lecturerDashboard");
            } else if ($type == "stu") {
                $this->redirect("studentDashboard");
            }
        } else {
            $this->redirect("login");
            // $this->redirect("studentDashboard");
        }
    }
}
