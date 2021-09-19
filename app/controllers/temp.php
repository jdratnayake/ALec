<?php

class Temp extends AlecFramework
{
    public function __construct()
    {
        $this->helper("linker");
    }

    public function index()
    {
        $this->view("admin/courseProfileView");
    }
}
