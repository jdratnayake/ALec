<?php

class ManageUser extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
        $this->manageUserModel = $this->model("manageUserModel");
    }

    public function index($courseId, $type = "lec")
    {
        $data["courseId"] = $courseId;
        $data["courseName"] = $this->manageUserModel->getCourseName($courseId);
        $data["userDetails"] = $this->manageUserModel->getNotAssignUserDetails($courseId, $type);

        $this->view("admin/manageUserView", $data);
    }

    public function assignUser($courseId, $type = "lec")
    {
        $data["courseId"] = $courseId;
        $data["courseName"] = $this->manageUserModel->getCourseName($courseId);
        $data["userDetails"] = $this->manageUserModel->getAssignUserDetails($courseId, $type);

        $this->view("admin/manageUserView", $data);
    }

    // public function assignUser()
    // {

    // }
}
