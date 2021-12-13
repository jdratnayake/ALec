<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>New Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("create_poll"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li>New Poll Question</li>
</ul>

<div class="details-content">
    <div class="container">
        <div class="heading">
            Create Poll
        </div>
        <div class="content">
            <div class="col">
                <img <?php srcIMG("mcq_icon.png"); ?> src="" alt="">
                <label for="mcq">MCQ</label>
            </div>
            <div class="col">
                <img <?php srcIMG("textanswer-icon.png"); ?> src="" alt="">
                <label for="open-text">OPEN_TEXT</label>
            </div>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>






