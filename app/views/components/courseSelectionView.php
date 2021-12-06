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

<?php linkPhp("navigationBarStudent"); ?>

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
    <li>Sessions</li>
</ul>

<div class="details-content">
    <div class="container">
        <div class="row">
            SCS 1201 - DATA STRUCTURES AND ALGORITHMS - I
            <i class="fa fa-circle" aria-hidden="true"></i>
        </div>
        <div class="row">SCS 1201 - DATA STRUCTURES AND ALGORITHMS - II</div>
        <div class="row">SCS 2201 - DATA STRUCTURES AND ALGORITHMS - III</div>
        <div class="row">SCS 1204 - OPERATING SYSTEMS - I</div>
        <div class="row">
            SCS 2205 - AUTOMATA THEORY - I
            <i class="fa fa-circle" aria-hidden="true"></i>
        </div>
        <div class="row">SCS 1201 - DATA STRUCTURES AND ALGORITHMS - I</div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

</html>











