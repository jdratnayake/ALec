<!--questioners' or repliers' identity should be hidden in the students' view-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>ALec</title>

    <?php linkCSS("forum_question") ?>
</head>

<body>

    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/lecturerCoursePageForum/index">Forum Course Page</a></li>
        <li>
            <a href=" <?php echo BASEURL . "/lecturerForumTopic/index/" . $data['bread']['forumDetails']['course_Id'] ?>">
                <?php echo "Discussion Forum " .  explode("-", $data['bread']['forumDetails']['forum_name'])[0] ?></a>
        </li>
        <li>Forum Discussion</li>
    </ul>

    <div class="forum-container">

        <input type="hidden" id="points-given-reply-ids" value="<?php echo $data["pointsGivenReply"]; ?>">

        <?php

        echo
        "
        <h2>{$data['topicDetail']['subject']}</h2>

        <div class='question'>
            <div class='profile_img_info'>
                <div class='img'>
                    <img ";

        srcIMG('profile_pic.svg');

        echo
        " alt='profile_pic'>
                </div>
                <div class='info'>
                    <p class='name'>{$data['topicDetail']['name']}</p>
                    <p class='place'> {$data['topicDetail']['post_time']} </p>
                </div>

                <div class='button-set'>
                    <button id='reply-btn' class='action-button' value='reply'>Reply</button>
                    <button class='action-button delete' value='delete-reply' " . "onclick=location.href='" . BASEURL . "/lecturerForumTopicDiscussion/deleteTopic/{$data['topicDetail']['topic_id']}" . "'" . " >Delete</button>
                </div>
            </div>
            
            <p class='question-content'> {$data['topicDetail']['question']} </p>

        </div>
        ";

        ?>

        <div class="answer input-box" id="input-box" style="display: none">
            <?php
            echo
            "
            <div class='profile_img_info'>
                <div class='img'>
                    <img 
            ";

            srcIMG('profile_pic.svg');

            echo
            "       alt='profile_pic'>
                </div>
                <div class='info'>
                    <p class='name'>{$data["userDetail"]["name"]}</p>
                    <p class='place'>{$data["userDetail"]["date"]}</p>
                </div>
            </div>
            ";
            ?>

            <label for="input-text"></label>

            <form action="<?php echo BASEURL . "/lecturerForumTopicDiscussion/submit/{$data['topicDetail']['topic_id']}" ?>" method="POST">
                <textarea name="reply-text" id="input-text" class="answer-content" rows="10" cols="140" placeholder="Type your reply here..."></textarea>
                <div class="button-set input-btns">
                    <button class="action-button" value="submit">Submit</button>
                    <button id="cancel-btn" class="action-button cancel" value="cancel">Cancel</button>
                </div>
            </form>
        </div>

        <?php

        while ($row = mysqli_fetch_assoc($data["replyDetails"])) {
            echo
            "
            <div class='answer'>
                <div class='profile_img_info'>
                    <div class='img'>
                        <img ";
            srcIMG('profile_pic.svg');
            echo "alt='profile_pic'>
                    </div>
                    <div class='info'>
                        <p class='name'>{$row["name"]}</p>
                        <p class='place'>{$row["post_time"]}</p>
                    </div>
                    <div class='button-set'>
                        <button class='action-button delete' value='delete-reply' " . "onclick=location.href='" . BASEURL . "/lecturerForumTopicDiscussion/deleteReply/{$row["reply_id"]}" . "'" . " >Delete</button>
                    </div>
                </div>
                
                <div class='answer-row'>
                    <div class='vote'>
                    ";

            if ($row["user_type"] == "stu") {
                echo
                "
                        <input type='hidden' value='{$row["reply_id"]}'>
                        <i class='fa fa-caret-up' aria-hidden='true'></i>
                        <div class='val'>{$row["points"]}</div>
                ";
            }

            echo
            "
                </div>
    
                    <p class='answer-content'>{$row["reply"]}</p>
                </div>
                

            </div>
            ";
        }

        ?>

    </div>

    <?php linkPhp("notificationView"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("forumQuestionGetReplyBox"); ?>

    <?php linkJS("forumGivePointsReply"); ?>

</body>

</html>