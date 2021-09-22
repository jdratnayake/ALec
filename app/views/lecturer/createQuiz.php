<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("create_quiz") ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<div class="form-content">
    <!-- Quiz heading -->
    <header>
        <h1>Create Quiz</h1>
    </header>

    <!-- Quiz basic details -->
    <form class="details" method="post" action='<?php echo BASEURL . "/temp/submit";  ?>'>
        <label for="quiz-name">Quiz name : </label>
        <input type="text" class="text" placeholder="Enter quiz name" name="quiz-name"><br>
        <label for="quiz-dur">Quiz duration : </label>
        <input type="number" class="time" name="quiz-dur-hr" min="0" max="60"> hrs
        <input type="number" class="time" name="quiz-dur-min" min="0" max="60"> mins
        <input type="number" class="time" name="quiz-dur-sec" min="0" max="60"> secs

        <div id="form">
            <!-- This is the JS Created Element Look create_quiz.js -->
        </div>

        <!-- Add Question Button -->
        <input type="button" class="add" id="add-question" value="+ Add Question"/>

        <div class="button-set">
            <input type="submit" id="create-quiz" class="finish" value="Submit">
        </div>
    </form>
</div>

<?php linkPhp("notification"); ?>

<?php linkPhp("footer"); ?>

<?php linkJS("create_quiz"); ?>

</body>

</html>