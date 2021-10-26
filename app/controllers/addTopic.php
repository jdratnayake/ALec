<?php

class AddTopic extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("lec");
        $this->helper("linker");
        $this->addTopicModel = $this->model("addTopicModel");
    }

    public function index($courseId)
    {
        $errors = array();
        $errors["name"] = "";

        $data["errors"] = $errors;
        $data["bread"]["courseDetails"] = $this->addTopicModel->getCourseDetails($courseId);

        //Capture form data
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // var_dump($_POST);
            // return 0;

            $name = $_POST["t_name"];
            $description = $_POST["t_desc"];

            //Empty check
            if (empty($name)) $errors["name"] = "Topic Name is required";

            //Unique check
            if ($this->addTopicModel->nameCheck($name)) {
                $errors["name"] = "Topic Name is already exists";
            }

            /* Count number of validation failures */
            $numberOfErrors = 0;
            foreach ($errors as $key => $value) {

                if ($value != "") {
                    $numberOfErrors++;
                }
            }

            if ($numberOfErrors == 0) {
                //Insert data
                $userId = $this->getSession("userId");
                $this->addTopicModel->addNewTopic($courseId, $userId, $name, $description);

                $this->setSession("successMessageStatus", 3);

                $this->redirect("lecturerTopicPage/index/{$courseId}");
            } else {
                $data["errors"] = $errors;
            }
        }

        $this->view("lecturer/addTopicView", $data);
    }
}
