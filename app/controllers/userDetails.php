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
        $this->view("admin/userDetailsView");
    }

    public function user($type, $page = 1)
    {
        echo $this->userModel->getFilteredUserDetails($type, $page);
        // $this->view("admin/userDetailsView", $data);
    }

    public function year($year, $page = 1)
    {
        echo $this->userModel->getFilteredUserDetailsByYear($year, $page);
    }

    public function search()
    {
        $data = $_POST["search-tag"];

        echo $this->userModel->getSearchResults($data);
    }

    public function userProfile()
    {
        $this->view("admin/userProfileView");
    }
}
