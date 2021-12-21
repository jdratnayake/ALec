<?php

class DisplaySessionsList extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->displaySessionsListModel = $this->model("displaySessionsListModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");
        $data["selectedCourses"] = $this->displaySessionsListModel->getSelectedCourses($userId);
        $data["activeSessions"] = $this->displaySessionsListModel->getActiveSessions($userId);
        $data["inActiveSessions"] = $this->displaySessionsListModel->getNotActiveSessions($userId);

        $errors = array();
        $errors["courseId"] = "";
        $errors["sessionName"] = "";

        // Register session - START
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            $courseId = $_POST["course-id"];
            $sessionName = $_POST["session-name"];

            //Empty check
            if ($courseId == "null") $errors["courseId"] = "Course is required";
            if (empty($sessionName)) $errors["sessionName"] = "Session Name is required";

            /* Count number of validation failures */
            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                $sessionId = $this->displaySessionsListModel->createSession($sessionName, $userId, $courseId);
                $this->redirect("viewSession/index/{$sessionId}");
            }
        }

        $data["errors"] = $errors;
        // Register session - END

        $this->view("lecturer/displaySessionsListView", $data);
    }

    public function changeSessionsStatus($sessionId, $status)
    {
        $this->displaySessionsListModel->changeSessionStatus($sessionId, $status);
    }
}
