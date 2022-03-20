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

    <input type="hidden" id="quizSummary-label" value="<?php echo $data["quizSummary"]["label"]; ?>">
    <input type="hidden" id="quizSummary-data" value="<?php echo $data["quizSummary"]["data"]; ?>">

    <?php

    ?>

    <div class="details-container">
        <header>Poll Statistics</header>

        <canvas id="myChart" style="width:70%;max-width:500px"></canvas>

    </div>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("lib/chart.min"); ?>

    <?php linkJS("temp"); ?>

</body>

</html>