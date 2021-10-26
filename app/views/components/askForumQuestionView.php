<?php $errors = $data["errors"] ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("ask_forum_question") ?>
</head>

<body>

    <?php

    if ($data["userType"] == "lec") {
        linkPhp("navigationBarLecturer");
    } else if ($data["userType"] == "stu") {
        linkPhp("navigationBarStudent");
    }

    ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="
            <?php

            if ($data["userType"] == "lec") {
                echo BASEURL . "/lecturerDashboard/index";
            } else if ($data["userType"] == "stu") {
                echo BASEURL . "/studentDashboard/index";
            }

            ?>
        ">Home</a></li>
        <li><a href="
        http://localhost/ALec/lecturerCoursePageForum/index
        <?php
        if ($data["userType"] == "lec") {
            echo BASEURL . "/lecturerCoursePageForum/index";
        } else if ($data["userType"] == "stu") {
            echo BASEURL . "/studentCoursePageForum/index";
        }

        ?>
        ">Forum Course Page</a></li>
        <li><a href="
        <?php
        if ($data["userType"] == "lec") {
            echo BASEURL . "/lecturerForumTopic/index/" . $data["courseId"];
        } else if ($data["userType"] == "stu") {
            echo BASEURL . "/studentForumTopic/index/" . $data["courseId"];
        }

        ?>
        ">Discussion Forum <?php echo $data["subjectCode"]; ?></a></li>
        <li>New discussion topic</li>
    </ul>

    <div class="forum-container">
        <header>
            <!--            Discussion Forum For --><?php //echo $data["subjectCode"]; 
                                                    ?>
            New Discussion Topic
        </header>

        <form action="<?php echo BASEURL . "/askForumQuestion/index/{$data['forumId']}"; ?>" method="post" id="topicSubmit" onsubmit="validateAll()">

            <div class="form-group">
                <label for="subject">Subject</label>
                <div class="right-side">
                    <input type="text" name="subject" id="subject" class="input-box" onfocusout="validateSubject()">
                    <div class="error"><?php echo $errors["subject"]; ?></div>
                </div>
            </div>
            <div class="form-group">
                <label for="question">Description</label>
                <div class="right-side">
                    <textarea name="question" id="question" cols="30" rows="8" class="input-box" onfocusout="validateQuestion()"></textarea>
                    <div class="error"><?php echo $errors["question"]; ?></div>
                </div>
            </div>

            <button type="submit" value="submit" class="done cancel" id="topic-post-cancel-btn" onclick="<?php echo "location.href=" . "'" . BASEURL . "/lecturerForumTopic/index/" . $data["courseId"] . "'" ?>">
                Cancel</button>
            <button type="submit" value="submit" class="done">Post To Forum</button>

        </form>



    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("askForumQuestion") ?>

</body>

</html>