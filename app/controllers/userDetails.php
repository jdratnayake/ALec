<?php

class userDetails extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->userModel = $this->model("userDetailsModel");
    }

    public function index()
    {
        $data["headName"] = "User Details";
        $data["userDetails"] = $this->userModel->getUserDetails();
        $this->view("admin/userDetailsView", $data);
    }

    public function lecturer()
    {
        $data["headName"] = "Lecturer Details";
        $data["userDetails"] = $this->userModel->getLectureDetails();
        $this->view("admin/userDetailsView", $data);
    }

    public function student()
    {
        $data["headName"] = "Student Details";
        $data["userDetails"] = $this->userModel->getStudentDetails();
        $this->view("admin/userDetailsView", $data);
    }

    public function userProfile()
    {
        $this->view("admin/profileDetailsView");
    }
}
