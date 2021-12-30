<!--Preview poll open-text - lecturer view-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Preview Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_Poll_OpenText"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>

<?php
//
//if ($data["userType"] == "lec") {
//    linkPhp("navigationBarLecturer");
//} else if ($data["userType"] == "stu") {
//    linkPhp("navigationBarStudent");
//}
//
//?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li><a href="#">New Poll Question</a></li>
    <li><a href="#">Create Open Text Question</a></li>
    <li>Preview Poll</li>
</ul>

<div class="details-content">

    <div class="controller-container">
        Go to Live Forum
        <p>3</p>
    </div>

    <div class="container">
        <div class="heading">
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
                <label for="question">What was your dream job as a child?</label>
                <input type="text" class="question" placeholder="Enter your answer here..." id="question">
            </div>

            <div class="button-container">
                <!--        Save Session Button-->
                <button type="button" value="Create Session" class="save-btn">Done</button>
            </div>
        </div>

        <div class="content" style="display: none">
            <div class="content-message">
                <i class="fa fa-spinner" aria-hidden="true"></i>
                No active polls to show
            </div>
        </div>

    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

<?php linkJS("timeBar"); ?>

</body>

</html>









