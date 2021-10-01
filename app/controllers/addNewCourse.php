<?php

class AddNewCourse extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->addNewCourseModel = $this->model("addNewCourseModel");
    }

    public function index()
    {
        $errors = array();
        $errors["name"] = "";
        $errors["year"] = "";

        $data["errors"] = $errors;

        //Capture form data
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $name = $_POST["c_name"];
            $description = $_POST["c_desc"];
            $year = $_POST["c_year"];

            //Empty check
            if (empty($name)) $errors["name"] = "Course Name is required";
            if (empty($year)) $errors["year"] = "Year is required";

            //Unique check
            if ($this->addNewCourseModel->nameCheck($name)) {
                $errors["name"] = "Course Name is already exists";
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
                $courseId = $this->addNewCourseModel->addCourse($name, $description, $year);
                $this->addNewCourseModel->addForum($name, $courseId);
            } else {
                $data["errors"] = $errors;
            }
        }
        $this->view("admin/addNewCourseView", $data);
    }
}
