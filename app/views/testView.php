<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("test"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <!-- **********CSS END********** -->
</head>

<body>

<?php linkPhp("navigationBarLecturer") ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
    <li></li>
</ul>

<div class="details-container">
    <header>Poll Statistics</header>

    <img <?php srcIMG("stat.jpg"); ?> alt="Statistics graph" class="graph-image">

</div>

<?php linkPhp("footer"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

</body>

</html>
