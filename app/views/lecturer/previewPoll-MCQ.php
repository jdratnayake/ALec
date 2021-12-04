<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Preview Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("preview_Poll_MCQ"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li><a href="#">New Poll Question</a></li>
    <li><a href="#">Create MCQ Question</a></li>
    <li>Preview Poll</li>
</ul>

<div class="details-content">
    <div class="container">
        <div class="heading">
            Open Text Poll Question
        </div>
        <div class="content">
            <div class="bar-div">
                <div id="time-bar" class="time-bar" style="width: 100%"></div>
            </div>
            <div class="time-div">
                <p id="time-display">60</p>
                <p> secs remaining</p>
            </div>

            <div class="questions-container">
                <!--            open text poll question-->
                <label for="question"></label>
                <input type="text" class="session question" placeholder="Enter your question here..." id="question">

                <!--            open text poll question-->
                <label for="answer-1"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-1">

                <!--            open text poll question-->
                <label for="answer-2"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-2">

                <!--            open text poll question-->
                <label for="answer-3"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-3">

                <!--            open text poll question-->
                <label for="answer-4"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-4">

                <!--            open text poll question-->
                <label for="answer-5"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-5">
            </div>
        </div>

        <div class="button-container">
            <!--        Save Session Button-->
            <button type="button" value="Create Session" class="save-btn">Save Question</button>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

<?php linkJS("createPollMcq"); ?>

<?php linkJS("timeBar"); ?>

</body>

</html>










