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
    <?php shortIcon('logo1.png'); ?>
</head>

<body>

    <?php linkPhp("navigationBarStudent"); ?>

    <div class="navigation-item-container">

        <div class="navigation-tab">
            <div class="row">
                <i class="fa fa-bar-chart"></i>
            </div>
            <div class="row">
                <div class="title">
                    Polls
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

    <?php linkPhp("../student/activeQuizzes"); ?>

    <!--    Available poll indicator-->
    <div class="pop-up"></div>

    <div class="notification-container" onclick="showNotifycation()" style="margin-bottom: 65px">
        <i class="fa fa-bar-chart" style="font-weight: 900; font-size: 22px;"></i>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("basic") ?>

    <?php linkJS("slideShow"); ?>

    <?php linkJS("studentDashboardModal"); ?>

</body>

</html>