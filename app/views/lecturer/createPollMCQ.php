<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("create_poll_mcq"); ?>

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
    <li>MCQ</li>
</ul>

<div class="details-content">
    <div class="container">
        <div class="heading">
            Multiple Choice Poll Question
        </div>
        <div class="content">

            <div class="first-row">
                <!--            option selection button-->
                <div class="option-btn">
                    <div class="left" id="option-mcq">MCQ</div>
                    <div class="right" id="option-TF">TRUE/FALSE</div>
                </div>
                <div class="time-input">
                    <label for="time-input">Time:</label>
                    <input type="text" id="time-input" placeholder="hrs:mins:secs">
                </div>
            </div>

            <!--            mcq type poll questions-->
            <div class="mcq" id="div-mcq">
                <label for="question"></label>
                <input type="text" class="session question" placeholder="Enter your question here..." id="question">

                <label for="answer-1"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-1">

                <label for="answer-2"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-2">

                <label for="answer-3"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-3">

                <label for="answer-4"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-4">

                <label for="answer-5"></label>
                <input type="text" class="session" placeholder="Enter your answer here..." id="answer-5">
            </div>

            <!--            true false type poll questions-->
            <div class="tf" id="div-tf" style="display: none">
                <label for="question"></label>
                <input type="text" class="session question" placeholder="Enter your question here..." id="question">

                <label for="true"></label>
                <input type="text" class="session" placeholder="True" id="true" readonly>

                <label for="false"></label>
                <input type="text" class="session" placeholder="False" id="false" readonly>
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

</body>

</html>







