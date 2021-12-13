<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Preview Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("show_poll_openText"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>

<?php linkPhp("navigationBarStudent"); ?>

<?php
//
//    if ($data["userType"] == "lec") {
//        linkPhp("navigationBarLecturer");
//    } else if ($data["userType"] == "stu") {
//        linkPhp("navigationBarStudent");
//    }
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
                    What was your dream job as a child?
                </span>
                <div class="answer-container">

                    <div class="row">
                        <div class="answer-label">DOCTOR</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 90%"></div>
                        </div>
                        <div class="percentage">90%</div>
                    </div>
                    <div class="row">
                        <div class="answer-label">DOCTOR</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 80%"></div>
                        </div>
                        <div class="percentage">80%</div>
                    </div>

                    <div class="row">
                        <div class="answer-label">SOFTWARE ENGINEER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 70%"></div>
                        </div>
                        <div class="percentage">70%</div>
                    </div>
                    <div class="row">
                        <div class="answer-label">SOFTWARE ENGINEER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 70%"></div>
                        </div>
                        <div class="percentage">70%</div>
                    </div>

                    <div class="row">
                        <div class="answer-label">LAWYER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 65%"></div>
                        </div>
                        <div class="percentage">65%</div>
                    </div>
                    <div class="row">
                        <div class="answer-label">LAWYER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 65%"></div>
                        </div>
                        <div class="percentage">65%</div>
                    </div>

                    <div class="row">
                        <div class="answer-label">PILOT</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 60%"></div>
                        </div>
                        <div class="percentage">60%</div>
                    </div>
                    <div class="row">
                        <div class="answer-label">PILOT</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 60%"></div>
                        </div>
                        <div class="percentage">60%</div>
                    </div>

                    <div class="row">
                        <div class="answer-label">ENGINE DRIVER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 15%"></div>
                        </div>
                        <div class="percentage">15%</div>
                    </div>
                    <div class="row">
                        <div class="answer-label">ENGINE DRIVER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 15%"></div>
                        </div>
                        <div class="percentage">15%</div>
                    </div>

                    <div class="row">
                        <div class="answer-label">AIRCRAFT ENGINEER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 10%"></div>
                        </div>
                        <div class="percentage">10%</div>
                    </div>
                    <div class="row">
                        <div class="answer-label">AIRCRAFT ENGINEER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 10%"></div>
                        </div>
                        <div class="percentage">10%</div>
                    </div>

                    <div class="row">
                        <div class="answer-label">DANCER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 8%"></div>
                        </div>
                        <div class="percentage">8%</div>
                    </div>
                    <div class="row">
                        <div class="answer-label">DANCER</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 8%"></div>
                        </div>
                        <div class="percentage">8%</div>
                    </div>

                    <div class="row">
                        <div class="answer-label">POET</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 2%"></div>
                        </div>
                        <div class="percentage">2%</div>
                    </div>
                    <div class="row">
                        <div class="answer-label">POET</div>
                        <div class="answer">
                            <div class="answer-progress pressed" style="width: 2%"></div>
                        </div>
                        <div class="percentage">2%</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="button-container">
            <!--        Save Session Button-->
            <button type="button" value="Create Session" class="save-btn">Done</button>
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










