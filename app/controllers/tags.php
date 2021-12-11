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

        //Create the search pattern
        $searchValues = $this->tagsModel->getTagNames($userId);
        $topicSearchValues = "";
        $topicSubjectValues = "";

        $replySearchValues = "";

        while ($row = mysqli_fetch_assoc($searchValues)) {
            $tagName = $row["tag_name"];

            $topicSearchValues = $topicSearchValues . " question LIKE '%" . $tagName . "%' OR";
            $topicSubjectValues = $topicSubjectValues . " subject LIKE '%" . $tagName . "%' OR";

            $replySearchValues = $replySearchValues . " reply LIKE '%" . $tagName . "%' OR";
        }

        $topicSearchValues = trim($topicSearchValues, " ");
        $topicSearchValues = trim($topicSearchValues, "OR");
        $topicSubjectValues = trim($topicSubjectValues, " ");
        $topicSubjectValues = trim($topicSubjectValues, "OR");

        $replySearchValues = trim($replySearchValues, " ");
        $replySearchValues = trim($replySearchValues, "OR");

        if (empty($topicSearchValues)) {
            $topicSearchValues = "question NOT LIKE '%'";
        }

        if (empty($topicSubjectValues)) {
            $topicSubjectValues = "subject NOT LIKE '%'";
        }

        if (empty($replySearchValues)) {
            $replySearchValues = "reply NOT LIKE '%'";
        }

        $data["topicDiscussionDetails"] =
            $this->tagsModel->getTopicDiscussionDetails($userId, $topicSearchValues, $topicSubjectValues, $replySearchValues);

        $data["replyDiscussionDetails"] =
            $this->tagsModel->getReplyDiscussionDetails($userId, $topicSearchValues, $topicSubjectValues, $replySearchValues);

        // var_dump(mysqli_fetch_assoc($data["topicDiscussionDetails"]));


        // return 0;
        $this->view("student/tagView", $data);
    }

    public function submit()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $userId = $this->getSession("userId");
            $tagName = strtolower($_POST["tag-name"]);

            $this->tagsModel->createTag($userId, $tagName);

            $_POST["tag-name"] = "";
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
        $tagName = strtolower($tagName);
        echo $this->tagsModel->validateTagName($userId, $tagName);
    }
}
