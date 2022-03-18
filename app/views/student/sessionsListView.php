<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>sessions</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_session_student"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarStudent"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="http://localhost/ALec/studentCoursePage/index">MyCourses</a></li>
    <li><a href="http://localhost/ALec/studentTopicPage/index/72">SCS 1212</a></li>
    <li>Sessions</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>Sessions</header>
    </div>

    <div class="sessions-container">

        <!--    Division session-->
        <div class="sessions">
            <div class="session">
                <span class="session-name">Session 1</span>
                <span class='session-created-date'>17/03/2022</span>
                <hr>
                <div class='session-details'>
                    <ul>
                        <li><a href="">Is this a DFA or NFA?</a></li>
                        <li><a href="">Which of the following does not represents the given language?
                                Language: {0,01}</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!--    Division of session-->
        <div class="sessions">
            <div class="session">
                <span class="session-name">Session 2</span>
                <span class='session-created-date'>12/01/2022</span>
                <hr>

                <div class='session-details'>
                    <ul>
                        <li><a href="">Poll 1</a></li>
                        <li><a href="">Poll 2</a></li>
                    </ul>
                </div>
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

