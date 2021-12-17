<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>New Session</title>

    <!-- CSS File HOME-->
    <?php linkCSS("create_session"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li>Add New Session</li>
</ul>

<div class="details-content">
<!--    <div class="header-container">-->
<!--        <header>New Session</header>-->
<!--    </div>-->
<!---->
<!--    <div class="session-details-container">-->
<!--        <div class="session-name-container">-->
<!--            <label for="course-name" class="session-label">Course Name</label>-->
<!--            <select class="input" name="course-name" id="course-name">-->
<!--                <option value="default">No course selected</option>-->
<!--                <option value="course-1">Data Structures and Algorithms - I</option>-->
<!--                <option value="course-2">Data Structures and Algorithms - II</option>-->
<!--                <option value="course-3">Data Structures and Algorithms - III</option>-->
<!--            </select>-->
<!--        </div>-->
<!--        <div class="session-name-container">-->
<!--            <label for="session-name" class="session-label">Session Name</label>-->
<!--            <input class="input" type="text" name="session-name" id="session-name"-->
<!--                   placeholder="Enter your session name here... &#xF040;" ">-->
<!--        </div>-->
<!--    </div>-->
<!---->
<!--    <div class="button-container">-->
<!--        <!--        Save Session Button-->-->
<!--        <button type="button" value="Create Session" class="save-btn">Create Session</button>-->
<!--    </div>-->
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

</body>

</html>




