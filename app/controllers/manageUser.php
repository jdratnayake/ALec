<?php

use function PHPSTORM_META\type;

class ManageUser extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->manageUserModel = $this->model("manageUserModel");
    }

    //Not Assigned Users Controller
    public function index($courseId, $type = "lec")
    {
        $data["type"] = $type;
        $data["courseId"] = $courseId;
        $data["buttonName"] = "Assign";
        $data["courseName"] = $this->manageUserModel->getCourseName($courseId);
        $data["userDetails"] = $this->manageUserModel->getNotAssignUserDetails($courseId, $type);

        if ($type == "lec") {
            $this->view("admin/manageLecturerView", $data);
        } else if ($type == "stu") {
            $this->view("admin/manageStudentView", $data);
        }
    }

    //Assigned Users Controller
    public function assignUser($courseId, $type = "lec")
    {
        $data["type"] = $type;
        $data["courseId"] = $courseId;
        $data["buttonName"] = "Remove";
        $data["courseName"] = $this->manageUserModel->getCourseName($courseId);
        $data["userDetails"] = $this->manageUserModel->getAssignUserDetails($courseId, $type);

        if ($type == "lec") {
            $this->view("admin/manageLecturerView", $data);
        } else if ($type == "stu") {
            $this->view("admin/manageStudentView", $data);
        }
    }

    public function assign($courseId, $type = "lec", $userId)
    {
        $this->manageUserModel->assignUser($courseId, $type, $userId);
        $this->index($courseId, $type);
    }

    public function remove($courseId, $type = "lec", $userId)
    {
        $this->manageUserModel->removeUser($courseId, $type, $userId);
        $this->assignUser($courseId, $type);
    }

    public function search($data, $operation, $type, $courseId)
    {
        if (!empty($data) and !empty($operation) and !empty($type)) {
            echo $this->manageUserModel->getSearchResults($data, $operation, $type, $courseId);
        }
    }
}
