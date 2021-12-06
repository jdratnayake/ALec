<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("create_poll_openText"); ?>

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
            Open Text Poll Question
        </div>
        <div class="content">
            <div class="first-row">
                <div class="time-input">
                    <label for="time-input">Time:</label>
                    <input type="text" id="time-input" placeholder="hrs:mins:secs">
                </div>
            </div>
            <div class="div-question">
                <!--            open text poll question-->
                <label for="question"></label>
                <input type="text" class="session" placeholder="Enter your question here..." id="question">
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

</body>

</html>








