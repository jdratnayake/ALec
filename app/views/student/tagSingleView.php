<?php

//$temp = $data["forumDetails"]["forum_name"];
//$courseCode = explode("-", $temp)[0];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>Tags</title>

    <?php linkCSS("tag") ?>

    <?php linkCSS("modal") ?>

    <?php linkCSS("success_message"); ?>

</head>

<body>

    <input type="hidden" id="userId" value="<?php echo $data["userId"]; ?>">

    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/studentDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/tags/index">Tags</a></li>
        <li><?php echo $data["tagDetails"]["tag_name"] ?></li>
    </ul>

    <div class="forum-container center">
        <div class="forum-message">
            <header><?php echo $data["tagDetails"]["tag_name"] ?></header>
        </div>

        <div class="discussion-list">
            <div class="discussion-table-container">
                <ul class="discussion-table">
                    <li class="table-header">
                        <div class="col col-1">Discussion</div>
                        <div class="col col-2">Started by</div>
                        <div class="col col-3">Course Name</div>
                    </li>

                    <?php
                    while ($row = mysqli_fetch_assoc($data["topicDiscussionDetails"])) {
                        $name = $row["name"];

                        if ($row["user_type"] === "stu" and $row["user_id"] !== $data["userId"] and $row["random_status"] === "T") {
                            $name = $row["random_name"];
                        }

                        echo
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
                    ?>
                </ul>

            </div>
        </div>
    </div>

    <?php linkPhp("notificationView"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("deleteMessage"); ?>

    <?php linkJS("add-tag-modal"); ?>

    <?php linkJS("tagValidation"); ?>

    <?php linkJS("forumSearch"); ?>

    <?php linkJS("deleteTag"); ?>

</body>

</html>