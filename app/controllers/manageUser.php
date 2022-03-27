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

    //User assign controller (display the view)
    public function index($courseId, $type = "lec")
    {
        // Success message name selection - START
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
        // Success message name selection - END

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

    //User remove controller (display the view)
    public function assignUser($courseId, $type = "lec")
    {
        // Success message name selection - START
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
        // Success message name selection - END

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

    // Assign a particular user to the course
    public function assign($courseId, $type = "lec", $userId)
    {
        $this->manageUserModel->assignUser($courseId, $type, $userId);
        $this->setSession("successMessageStatus", 1);
        $this->redirect("manageUser/index/{$courseId}/{$type}");
    }

    // Remove particular user from the course
    public function remove($courseId, $type = "lec", $userId)
    {
        $this->manageUserModel->removeUser($courseId, $type, $userId);
        $this->setSession("successMessageStatus", 2);
        $this->redirect("manageUser/assignUser/{$courseId}/{$type}");
    }

    // Search the details of the users
    public function search($operation, $type, $courseId, $data)
    {
        if (!empty($operation) and !empty($type)) {
            echo $this->manageUserModel->getSearchResults($data, $operation, $type, $courseId);
        }
    }
}
