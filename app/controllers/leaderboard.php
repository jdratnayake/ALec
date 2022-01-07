<?php

class Leaderboard extends AlecFramework
{
    public function __construct(){
        $this->authorization("stu","lec");
        $this->helper("linker");
        $this->leaderboardModel = $this->model("leaderboardModel");
    }

    public function index(){
        $data["studentDetails"] = $this->leaderboardModel->getStudentDetails();
        $this->view("leaderboardView", $data);
    }
}

