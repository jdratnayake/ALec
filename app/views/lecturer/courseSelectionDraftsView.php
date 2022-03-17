<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Courses</title>

    <!-- CSS File HOME-->
    <?php linkCSS("course_selection"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>

<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
    <li>Drafts</li>
</ul>

<div class="details-content">
    <div class="container">

        <input type="hidden" id="active-course-ids" value="">

        <div class='row'>
            SCS 1201 - DATA STRUCTURES AND ALGORITHMS - I
            <i class='fa fa-circle' aria-hidden='true'></i>
        </div>
        <div class='row'>
            SCS 1201 - DATA STRUCTURES AND ALGORITHMS - II
        </div>

    </div>

</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

</body>

</html>
