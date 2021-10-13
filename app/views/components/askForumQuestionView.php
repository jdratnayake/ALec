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

    <div class="forum-container">
        <header>Discussion Forum For <?php echo $data["subjectCode"]; ?></header>
        <h2>New Discussion Topic</h2>

        <form action="<?php echo BASEURL . "/askForumQuestion/index/{$data['forumId']}"; ?>" method="post" id="topicSubmit" onsubmit="validateAll()">

            <div class="form-group">
                <label for="subject">Subject</label>
                <div class="right-side">
                    <input type="text" name="subject" id="subject" class="input-box" onfocusout="validateSubject()">
                    <div class="error"><?php echo $errors["subject"]; ?></div>
                </div>
            </div>
            <div class="form-group">
                <label for="question">Question</label>
                <div class="right-side">
                    <textarea name="question" id="question" cols="30" rows="8" class="input-box" onfocusout="validateQuestion()"></textarea>
                    <div class="error"><?php echo $errors["question"]; ?></div>
                </div>
            </div>

            <button type="submit" value="submit" class="done">Post to forum</button>

        </form>

        <button type="submit" value="submit" class="done cancel" onclick="<?php echo "location.href=" . "'" . BASEURL . "/lecturerForumTopic/index/" . $data["courseId"] . "'" ?>">
            Cancel</button>

    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("askForumQuestion") ?>

</body>

</html>