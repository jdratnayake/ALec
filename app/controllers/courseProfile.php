<?php

class CourseProfile extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
    }

    public function index($course_id)
    {
        $this->view("admin/courseProfileView");
    }
}
