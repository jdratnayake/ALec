<?php

class Logout extends AlecFramework
{
    public function __construct()
    {
    }

    public function index()
    {
        if (isset($_SESSION["userId"]) && isset($_SESSION["type"])) {
            session_destroy();
            $this->redirect("login");
        }
    }
}
