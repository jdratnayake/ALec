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

<?php linkPhp("navigationBarLecturer"); ?>

<div class="forum-container">
    <header>Discussion Forum for SCS 2205</header>
    <h2>New Discussion Topic</h2>

    <form action="" method="post">

        <div class="form-group">
            <label for="subject">Subject</label>
            <div class="right-side">
                <input type="text" id="subject" class="input-box">
                <div class="error">error</div>
            </div>
        </div>
        <div class="form-group">
            <label for="question">Question</label>
            <div class="right-side">
                <textarea name="question" id="question" cols="30" rows="10" class="input-box"></textarea>
                <div class="error">error</div>
            </div>
        </div>

        <button type="submit" value="submit" class="done cancel">Cancel</button>
        <button type="submit" value="submit" class="done">Post to forum</button>

    </form>

</div>

<?php linkPhp("notification"); ?>

<?php linkPhp("footer"); ?>

</body>

</html>

