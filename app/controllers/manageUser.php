<?php

// 1 = Assign
// 2 = Remove

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

        $data["success"] = "";

        $successSignal = $this->getSession("successMessageStatus");

        if (isset($successSignal) and $successSignal == "1") {
            if ($type == "lec") {
                $data["success"] = "Lecturer Assigned Successfully";
            } else if ($type == "stu") {
                $data["success"] = "Student Assigned Successfully";
            }

            $this->unsetSession("successMessageStatus");
        }

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
        $data["success"] = "";

        $successSignal = $this->getSession("successMessageStatus");

        if (isset($successSignal) and $successSignal == "2") {
            if ($type == "lec") {
                $data["success"] = "Lecturer Removed Successfully";
            } else if ($type == "stu") {
                $data["success"] = "Student Removed Successfully";
            }

            $this->unsetSession("successMessageStatus");
        }

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
        $this->setSession("successMessageStatus", 1);
        $this->redirect("manageUser/index/{$courseId}/{$type}");
    }

    public function remove($courseId, $type = "lec", $userId)
    {
        $this->manageUserModel->removeUser($courseId, $type, $userId);
        $this->setSession("successMessageStatus", 2);
        $this->redirect("manageUser/assignUser/{$courseId}/{$type}");
    }

    public function search($operation, $type, $courseId, $data)
    {
        if (!empty($operation) and !empty($type)) {
            echo $this->manageUserModel->getSearchResults($data, $operation, $type, $courseId);
        }
    }
}
