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

    public function sessionSearch()
    {
        $userId = $this->getSession("userId");
        // var_dump($_POST);
        $searchValue = $_POST["search-tag"];
        $searchValue = "%" . $searchValue . "%";

        $data["activeSessions"] = $this->displaySessionsListModel->getActiveSessionsSearch($userId, $searchValue);
        $data["inActiveSessions"] = $this->displaySessionsListModel->getNotActiveSessionsSearch($userId, $searchValue);

        $output = " <div class='sessions''>
                        <span class=' session-label'>Active</span>

                        <div id='active-sessions'>";



        while ($row = mysqli_fetch_assoc($data["activeSessions"])) {
            $output .=
                "
                <div class='session'>
                    <div class='session-details'>
                        <a href='http://localhost/ALec/viewSession/index/{$row['session_id']}' class='session-name'>
                            <span>
                                {$row['session_name']}
                            </span>
                        </a>
                        <span class='eye'>
                            <input type='hidden' class='course-identity' value='{$row['course_id']}'>
                            <input type='hidden' value='{$row['session_id']}'>
                            <i class='fa fa-eye publish-status' aria-hidden='true'></i>
                            <i class='fa fa-eye-slash publish-status' aria-hidden='true' style='display: none'></i>
                        </span>
                    </div>
                    <span class='session-course'>{$row['course_name']}</span>
                    <span class='session-created-date' style='text-decoration: none; font-size: 10px'>
                        {$row['date']}
                    </span>
                </div>
                ";
        }

        $output .= "     </div>

                    </div>";

        $output .= " <div class='sessions''>
                        <span class=' session-label'>Recent</span>

                        <div id='inactive-sessions'>";



        while ($row = mysqli_fetch_assoc($data["inActiveSessions"])) {
            $output .=
                "
                <div class='session'>
                        <div class='session-details'>
                            <a href='http://localhost/ALec/viewSession/index/{$row['session_id']}' class='session-name'>
                                <span>
                                    {$row['session_name']}
                                </span>
                            </a>
                            <span>
                                <input type='hidden' class='course-identity' value='{$row['course_id']}'>
                                <input type='hidden' value='{$row['session_id']}'>
                                <i class='fa fa-eye publish-status' aria-hidden='true' style='display: none'></i>
                                <i class='fa fa-eye-slash publish-status' aria-hidden='true'></i>
                            </span>
                        </div>
                        <span class='session-course'>{$row['course_name']}</span>
                        <span class='session-created-date' style='text-decoration: none; font-size: 10px'>
                                {$row['date']}
                        </span>    
                </div>
                ";
        }

        $output .= "     </div>

                    </div>";

        echo $output;
    }
}
