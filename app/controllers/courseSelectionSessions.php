<?php

class CourseSelectionSessions extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->courseSelectionSessionsModel = $this->model("courseSelectionSessionsModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");
        $data["courseDetails"] = $this->courseSelectionSessionsModel->getCourseDetails($userId);
        $data["activeCourseIds"] = $this->activeCourseList();

        $this->view("student/courseSelectionSessionsView", $data);
    }

    public function getActiveCourses()
    {
        echo $this->activeCourseList();
    }

    public function activeCourseList()
    {
        $userId = $this->getSession("userId");
        $activeCourseDetails = $this->courseSelectionSessionsModel->getActiveCourseDetails($userId);

        $courseIds = "";

        while ($row = mysqli_fetch_assoc($activeCourseDetails)) {
            $courseIds .= "_{$row['course_id']}";
        }

        $courseIds = trim($courseIds, "_");

        return $courseIds;
    }
}
