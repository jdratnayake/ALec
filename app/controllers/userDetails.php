<?php

class userDetails extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("admin");
        $this->helper("linker");
        $this->userModel = $this->model("userDetailsModel");
    }

    public function index()
    {
        $data["userDetails"] = $this->userModel->getUserDetails();
        $this->view("admin/userDetailsView", $data);
    }

    public function user($type)
    {
        echo $this->userModel->getFilteredUserDetails($type);
        // $this->view("admin/userDetailsView", $data);
    }

    public function userProfile()
    {
        $this->view("admin/userProfileView");
    }
}
