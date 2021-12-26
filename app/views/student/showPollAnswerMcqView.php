<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Preview Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("show_poll_mcq"); ?>

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
    <li><a href="#">Create MCQ Question</a></li>
    <li>Preview Poll</li>
</ul>

<div class="details-content">

    <div class="controller-container">
        Go to Live Forum
        <p>3</p>
    </div>

    <div class="container">
        <div class="heading"></div>

        <div class="content">
            <div class="questions-container">
                <span class="participant-row">
                    <i class="fa fa-users" aria-hidden="true"></i>
                    55
                </span>
                <span class="question">
                    Which is not a property of a transaction?
                </span>
                <div class="row">
                    <div class="answer">
                        <div class="answer-progress pressed" style="width: 8%">Inclusion</div>
                    </div>
                    8%
                </div>

                <div class="row">
                    <div class="answer">
                        <div class="answer-progress" style="width: 83%">Atomicity</div>
                    </div>
                    83%
                </div>

                <div class="row">
                    <div class="answer">
                        <div class="answer-progress" style="width: 2%">Consistency</div>
                    </div>
                    2%
                </div>

                <div class="row">
                    <div class="answer">
                        <div class="answer-progress" style="width: 1%">Durability</div>
                    </div>
                    1%
                </div>

                <div class="row">
                    <div class="answer">
                        <div class="answer-progress" style="width: 0">Durability</div>
                    </div>
                    0%
                </div>

            </div>
        </div>

        <div class="button-container">
            <!--        Save Session Button-->
            <!--            --><?php
            //
            //            if ($data["userType"] == "lec") {
            //                ?>
            <!--                <button type="button" value="Create Session" class="save-btn">Done</button>-->
            <!--                --><?php
            //            } else if ($data["userType"] == "stu") {
            //                ?>
            <!--                <button type="button" value="Create Session" class="save-btn" style="display: none">Done</button>-->
            <!--                --><?php
            //            }
            //
            //            ?>

        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

</body>

</html>










