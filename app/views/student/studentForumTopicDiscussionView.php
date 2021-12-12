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

    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/studentDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/studentCoursePageForum/index">Forum Course Page</a></li>
        <li>
            <a href=" <?php echo BASEURL . "/studentForumTopic/index/" . $data['bread']['forumDetails']['course_Id'] ?>">
                <?php echo "Discussion Forum " .  explode("-", $data['bread']['forumDetails']['forum_name'])[0] ?></a>
        </li>
        <li>Forum Discussion</li>
    </ul>

    <div class="forum-container">

        <?php

        if ($data['topicDetail']["user_type"] === "stu" and $data['topicDetail']["user_id"] !== $data["userDetail"]["user_id"] and $data['topicDetail']["random_status"] === "T") {
            $name = $data['topicDetail']['random_name'];
        } else {
            $name = $data['topicDetail']['name'];
        }

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
                    <p class='name'>{$name}</p>
                    <p class='place'> {$data['topicDetail']['post_time']} </p>
                </div>

                <div class='button-set'>
                    <button id='reply-btn' class='action-button' value='reply'>Reply</button>
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

            <form action="<?php echo BASEURL . "/studentForumTopicDiscussion/submit/{$data['topicDetail']['topic_id']}" ?>" method="POST">
                <!--        Toggle button to toggle between real name and random name-->
                <div class="toggle-btn">
                    <span class="toggle-label">Use Random Name</span>
                    <label for="name-toggle" class="switch">
                        <input type="checkbox" id="name-toggle" name="name-toggle" checked>
                        <span class="slider round"></span>
                    </label>
                </div>

                <textarea name="reply-text" id="input-text" class="answer-content" rows="10" cols="140" placeholder="Type your reply here..."></textarea>
                <div class="button-set input-btns">
                    <button class="action-button" value="submit">Submit</button>
                    <button id="cancel-btn" class="action-button cancel" value="cancel">Cancel</button>
                </div>
            </form>
        </div>

        <?php

        while ($row = mysqli_fetch_assoc($data["replyDetails"])) {

            if ($row["user_type"] === "stu" and $row["user_id"] !== $data["userDetail"]["user_id"] and $row["random_status"] == "T") {
                $name = $row["random_name"];
            } else {
                $name = $row["name"];
            }

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
                        <p class='name'>{$name}</p>
                        <p class='place'>{$row["post_time"]}</p>
                    </div>
                </div>

                <p class='answer-content'>{$row["reply"]}</p>

            </div>
            ";
        }

        ?>

        <!-- <div class='answer'>
            <div class='profile_img_info'>
                <div class='img'>
                    <img <php srcIMG('profile_pic.svg'); ?> alt='profile_pic'>
                </div>
                <div class='info'>
                    <p class='name'>M F RIZWAN</p>
                    <p class='place'><span><i class='far fa-calendar-minus'></i></span>
                        24 Jul 2021
                    </p>
                </div>
                <div class='button-set'>
                    <button class='action-button' value='reply'>Reply</button>
                    <button class='action-button delete' value='delete-reply'>Delete</button>
                </div>
            </div>

            <p class='answer-content'>
                The requirement is for the MAC address to be unique within the local network,
                as IPv4 is used to uniquely identify all devices, and since the IPv6 also supports this,
                we could reuse MAC addresses, as they are not visible beyond the local network.

                These are some of the points that I think and I made a research on, and by research,
                I mean a google search. Hope this helps guys, and if you have more valid points please do share.
            </p>

        </div> -->

    </div>

    <?php linkPhp("notificationView"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("forumQuestionGetReplyBox"); ?>

</body>

</html>