<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS file -->
    <?php linkCSS('home'); ?>
    <?php linkCSS('active_quizzes_table'); ?>
    <?php linkCSS('modal'); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon('logo1.jpg'); ?>
</head>

<body>

    <?php linkPhp("navigationBarStudent"); ?>

    <div class="navigation-item-container">

        <div class="navigation-tab">
            <div class="row">
                <i class="fa fa-server"></i>
            </div>
            <div class="row">
                <div class="title">
                    Sessions
                </div>
            </div>
        </div>

        <div class="navigation-tab" onclick="window.location='<?php echo BASEURL . '/studentCoursePage/index'; ?>' ">
            <div class="row">
                <i class="fa fa-graduation-cap"></i>
            </div>
            <div class="row">
                <div class="title">
                    My Courses
                </div>
            </div>
        </div>

        <div class="navigation-tab" onclick="window.location='<?php echo BASEURL . '/studentCoursePageForum/index'; ?>' ">
            <div class="row">
                <i class="far fa-comment-alt"></i>
            </div>
            <div class="row">
                <div class="title">
                    Forum
                </div>
            </div>
        </div>

        <div class="navigation-tab">
            <div class="row">
                <i class="fas fa-medal"></i>
            </div>
            <div class="row">
                <div class="title">
                    Leaderboard
                </div>
            </div>
        </div>

    </div>

    <hr>
<!--    <div class="divider">-->
<!--        <span class="dot"></span>-->
<!--        <span class="dot"></span>-->
<!--        <span class="dot"></span>-->
<!--    </div>-->

    <div class="active-quizzes-container">
        <ul class="quiz-table">
            <h3>Active quizzes</h3>
            <li class="table-header">
                <div class="col col-1">Quiz topic</div>
                <div class="col col-2">Start time</div>
                <div class="col col-3">End time</div>
                <div class="col col-4">Duration</div>
            </li>

            <?php
            while ($row = mysqli_fetch_assoc($data["quizDetails"])) {
                echo
                "
            <li class='table-row'>
                <input type='hidden' value='{$row['quiz_id']}'>

                <div class='col col-1' data-label='Quiz topic'>
                    <a class='topic' href='#'>{$row['quiz_name']}</a>
                </div>
                <div class='col col-2' data-label='Start time'>
                    <p>{$row['published_date']}</p>
                </div>
                <div class='col col-3' data-label='End time'>
                    <p>{$row['close_date']}</p>
                </div>
                <div class='col col-4' data-label='Duration'>
                    <p>{$row['duration']}</p>
                </div>
            </li>
            ";
            }
            ?>
            <!-- <li class="table-row">
            <div class="col col-1" data-label="Quiz topic">
                <a class="topic"  href="#">OS Quiz - 01</a>
            </div>
            <div class="col col-2" data-label="Start time">
                <p>10.30 am</p>
            </div>
            <div class="col col-3" data-label="End time">
                <p>11.30 am</p>
            </div>
            <div class="col col-4" data-label="Duration">
                <p>01 hrs: 00 mins : 00 secs</p>
            </div>
        </li> -->
        </ul>
    </div>

    <!-- Modal content -->
    <div class="modal" id="confirm-quiz-model">
        <input type='hidden' id='quiz-id' value=''>

        <div class="modal-content">
            <div class="modal-header">
                <span class="close" id="close">&times;</span>
                <h3>Requirements Engineering Quiz</h3>
            </div>
            <div class="modal-body">
                <div class="description-content">
                    <p class="description">
                        Click on the <strong>Attempt quiz now</strong> button below to begin the quiz.
                        When you have answered all the questions, click on <strong>Submit all and finish</strong>
                    </p>
                </div>

                <button id="attempt-btn" class="btn">Attempt Now</button>

            </div>
        </div>
    </div>

    <!--    Available poll indicator-->
    <div class="pop-up"></div>

    <div class="notification-container" onclick="showNotifycation()" style="margin-bottom: 65px">
        <i class="fa fa-bar-chart" style="font-weight: 900; font-size: 22px;"></i>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("basic") ?>

    <?php linkJS("studentDashboardModal"); ?>

</body>

</html>