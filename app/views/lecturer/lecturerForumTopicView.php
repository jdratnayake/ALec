<?php

$temp = $data["forumDetails"]["forum_name"];
$courseCode = explode("-", $temp)[0];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("forum") ?>
</head>

<body>

    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/lecturerCoursePageForum/index">Forum Course Page</a></li>
        <li>Discussion Forum <?php echo $courseCode; ?></li>
    </ul>

    <div class="forum-container center">
        <div class="forum-message">
            <header>Discussion Forum For <?php echo $courseCode; ?></header>

            <p><?php echo $data["forumDetails"]["forum_description"]; ?></p>
        </div>

        <div class="discussion-list">
            <button onclick="window.location='<?php echo BASEURL . '/askForumQuestion/index/' . $data["forumDetails"]["forum_id"]; ?>' ">
                <span class="button-title">
                    <i class="fas fa-plus"></i>

                    <span class="space-tag"></span>

                    <span class="text">
                        Add New Topic
                    </span>
                </span>
            </button>

            <div class="discussion-table-container">
                <ul class="discussion-table">
                    <li class="table-header">
                        <div class="col col-4 reply"></div>
                        <div class="col col-1">Discussion</div>
                        <div class="col col-2">Started by</div>
                        <div class="col col-3">Last post</div>
                    </li>

                    <?php
                    while ($row = mysqli_fetch_assoc($data["topicDiscussionDetails"])) {
                        $replyRow = mysqli_fetch_assoc($data["replyDiscussionDetails"]);

                        echo
                        "
                        <li class='table-row'>
                        <div class='col col-4 reply-count' data-label='Replies'>
                            <div class='vote'>
                                <i class='fa fa-caret-up' aria-hidden='true'></i>
                                <div class='val'>0</div>
                            </div>
                        </div>

                        <div class='col col-1' data-label='Discussion'>
                            <a href='" . BASEURL . "/lecturerForumTopicDiscussion/index/{$row['topic_id']}" . "'>
                                {$row['subject']}
                            </a>
                        </div>
                        <div class='col col-2' data-label='Started by'>
                            <div class='profile_img_info'>
                                <div class='img'>
                                    <img src='http://localhost/ALec/public/img/profile_pic.svg' alt='profile_pic'>
                                </div>
                                <div class='info'>
                                    <p class='name'>{$row['name']}</p>
                                    <p class='place'>
                                        {$row['post_time']}
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class='col col-3' data-label='Last post'>
                            <div class='profile_img_info'>
                                <div class='img'>
                                    <img src='http://localhost/ALec/public/img/profile_pic.svg' alt='profile_pic'>
                                </div>
                                <div class='info'>
                                    <p class='name'>{$replyRow['name']}</p>
                                    <p class='place'>
                                        {$replyRow['post_time']}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </li>
                        ";
                    }
                    ?>

                </ul>

            </div>
        </div>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("forum"); ?>

</body>

</html>