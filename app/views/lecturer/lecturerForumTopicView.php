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

    <div class="forum-container center">
        <div class="forum-message">
            <h2>Discussion Forum For <?php echo $courseCode; ?></h2>

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

                    <li class="table-row">
                        <div class="col col-4 reply-count" data-label="Replies">
                            <div class="vote">
                                <i class="fa fa-caret-up" aria-hidden="true"></i>
                                <div class="val">0</div>
                                <i class="fa fa-caret-down" aria-hidden="true"></i>
                            </div>
                        </div>

                        <div class="col col-1" data-label="Discussion">
                            <a href="#">
                                Will MAC addresses run out?
                            </a>
                        </div>
                        <div class="col col-2" data-label="Started by">
                            <div class="profile_img_info">
                                <div class="img">
                                    <img <?php srcIMG("profile_pic.svg"); ?> alt="profile_pic">
                                </div>
                                <div class="info">
                                    <p class="name">M F RIZWAN</p>
                                    <p class="place"><span><i class="far fa-calendar-minus"></i></span>
                                        24 Jul 2021
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col col-3" data-label="Last post">
                            <div class="profile_img_info">
                                <div class="img">
                                    <img <?php srcIMG("profile_pic.svg"); ?> alt="profile_pic">
                                </div>
                                <div class="info">
                                    <p class="name">M F RIZWAN</p>
                                    <p class="place"><span><i class="far fa-calendar-minus"></i></span>
                                        24 Jul 2021
                                    </p>
                                </div>
                            </div>
                        </div>



                        <!--                        <div class="col col-5 vote" data-label="Votes">-->
                        <!--                                <i class="fa fa-caret-up" aria-hidden="true"></i>-->
                        <!--                                <i class="fa fa-caret-down" aria-hidden="true"></i>-->
                        <!--                        </div>-->

                    </li>

                </ul>
            </div>
        </div>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

</body>

</html>