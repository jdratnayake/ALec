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
            $topicSubjectValues = $topicSubjectValues . " subject LIKE '%" . $tagName . "%' OR"; //whether tag name included in the discussion topic

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

    public function forumSearch()
    {
        $userId = $this->getSession("userId");
        $searchValue = $_POST["search"];
        $searchValue = "'%" . $searchValue . "%'";

        $topicDiscussionDetails =
            $this->tagsModel->searchTopicDiscussionDetails($userId, $searchValue);

        $output =
            "
        <li class='table-header'>
        <div class='col col-1'>Discussion</div>
        <div class='col col-2'>Started by</div>
        <div class='col col-3'>Course Name</div>
        </li>
        ";



        while ($row = mysqli_fetch_assoc($topicDiscussionDetails)) {

            $name = $row["name"];

            if ($row["user_type"] === "stu" and $row["user_id"] !== $userId and $row["random_status"] === "T") {
                $name = $row["random_name"];
            }

            $output .=
                "
                <li class='table-row'>

                <div class='col col-1' data-label='Discussion'>
                    <a href='" . BASEURL . "/studentForumTopicDiscussion/index/{$row['topic_id']}" . "'>
                        {$row['subject']}
                    </a>
                </div>
                <div class='col col-2' data-label='Started by'>
                    <div class='profile_img_info'>
                        <div class='img'>
                            <img src='http://localhost/ALec/public/img/profile_pic.svg' alt='profile_pic'>
                        </div>
                        <div class='info'>
                            <p class='name'>{$name}</p>
                            <p class='place'>
                                {$row['post_time']}
                            </p>
                        </div>
                    </div>
                </div>

                <div class='col col-3' data-label='Course Name'>
                    {$row['course_name']}
                </div>
            </li>
                ";
        }

        echo $output;
    }

    public function openTag($tagId)
    {
        $userId = $this->getSession("userId");
        $data["userId"] = $userId;
        $data["tagDetails"] = $this->tagsModel->getTagDetails($tagId);
        $tagName = $data["tagDetails"]["tag_name"];

        $data["topicDiscussionDetails"] =
            $this->tagsModel->getTopicDiscussionDetailsSingleTag($userId, $tagName);

        $this->view("student/tagSingleView", $data);
    }
}
