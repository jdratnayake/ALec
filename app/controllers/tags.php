<?php

class Tags extends AlecFramework
{
    public function __construct()
    {
        $this->authorization("stu");
        $this->helper("linker");
        $this->tagsModel = $this->model("tagsModel");
    }

    public function index()
    {
        $userId = $this->getSession("userId");

        $data["tagNames"] = $this->tagsModel->getTagNames($userId);

        $this->view("student/tagView", $data);
    }

    public function submit()
    {
        var_dump($_POST);
    }
}
