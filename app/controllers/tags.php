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

        $data["userId"] = $userId;
        $data["tagNames"] = $this->tagsModel->getTagNames($userId);

        $this->view("student/tagView", $data);
    }

    public function submit()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $userId = $this->getSession("userId");
            $tagName = $_POST["tag-name"];

            $this->tagsModel->createTag($userId, $tagName);

            $this->redirect("tags/index");
        }
    }

    public function deleteTag($tagId)
    {
        $this->tagsModel->deleteTag($tagId);
        $this->redirect("tags/index");
    }

    public function uniqueCheck($userId, $tagName)
    {
        $tagName = str_replace("_", " ", trim($tagName, " "));
        echo $this->tagsModel->validateTagName($userId, $tagName);
    }
}
