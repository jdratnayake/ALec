<!--questioners' or repliers' identity should be hidden in the students' view-->

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
        <header>Discussion Forum for SCS 2205</header>
        <h2>New Discussion Topic</h2>

        <form action="<?php echo BASEURL . "/askForumQuestion/submit"; ?>" method="post">

            <input type="hidden" id="forumId" value="<?php echo $data["forumId"]; ?>">

            <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" id="subject" class="input-box">

            </div>

            <div class="form-group">
                <label for="question">Question</label>
                <textarea name="question" id="question" cols="30" rows="10" class="input-box"></textarea>
            </div>

            <button type="submit" name="cancel" value="cancel" class="done cancel">Cancel</button>
            <button type="submit" name="post" value="post" class="done">Post</button>

        </form>

    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

</body>

</html>