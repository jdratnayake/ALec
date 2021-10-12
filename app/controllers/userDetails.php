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

    public function user($type, $page = 1)
    {
        echo $this->userModel->getFilteredUserDetails($type, $page);
        // $this->view("admin/userDetailsView", $data);
    }

    public function year($year)
    {
        echo $this->userModel->getFilteredUserDetailsByYear($year);
    }

    public function search($data)
    {
        if (!empty($data)) {
            echo $this->userModel->getSearchResults($data);
        }
    }

    public function userProfile()
    {
        $this->view("admin/userProfileView");
    }
}
