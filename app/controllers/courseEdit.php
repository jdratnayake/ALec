<?Php

class CourseEdit extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->courseEditModel = $this->model("courseEditModel");
    }

    public function index($courseId)
    {
        $errors = array();
        $errors["name"] = "";
        $errors["year"] = "";

        $data["errors"] = $errors;

        //Capture form data
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = $_POST["c_id"];
            $name = $_POST["c_name"];
            $description = $_POST["c_desc"];
            $year = $_POST["c_year"];

            //Empty check
            if (empty($name)) $errors["name"] = "Course Name is required";
            if (empty($year)) $errors["year"] = "Year is required";

            //Unique check
            if ($this->courseEditModel->nameCheck($name, $courseId)) {
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
                //Update data
                $this->courseEditModel->updateCourse($id, $name, $description, $year);

                $this->setSession("successMessageStatus", 1);

                $this->redirect("courseProfile/index/{$id}");
            } else {
                $data["errors"] = $errors;
            }
        }

        //Get Course details
        $data["courseDetails"] = $this->courseEditModel->getCourseDetails($courseId);

        $this->view("admin/courseEditView", $data);
    }
}
