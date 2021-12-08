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

        //Create the search pattern
        $searchValues = $this->tagsModel->getTagNames($userId);
        $topicSearchValues = "";
        $replySearchValues = "";

        while ($row = mysqli_fetch_assoc($searchValues)) {
            $tagName = $row["tag_name"];

            $topicSearchValues = $topicSearchValues . " " . "question LIKE %" . $tagName . "% OR";
            $replySearchValues = $replySearchValues . " " . "reply LIKE %" . $tagName . "% OR";
        }

        echo $topicSearchValues . "<br>";
        echo $replySearchValues;

        return 0;

        $this->view("student/tagView", $data);
    }
}
