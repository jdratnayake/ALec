<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS file -->
    <?php linkCSS('home'); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon('logo1.png'); ?>
</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <div class="navigation-item-container">

        <div class="navigation-tab" onclick="window.location='<?php echo BASEURL . '/createQuizDashboard/index'; ?>' ">
            <div class="row">
                <i class="fas fa-question-circle"></i>
            </div>
            <div class="row">
                <div class="title">
                    Ask Question
                </div>
            </div>
        </div>

        <div class="navigation-tab" onclick="window.location='<?php echo BASEURL . '/lecturerCoursePage/index'; ?>' ">
            <div class="row">
                <i class="fa fa-graduation-cap"></i>
            </div>
            <div class="row">
                <div class="title">
                    My Courses
                </div>
            </div>
        </div>

        <div class="navigation-tab">
            <div class="row">
                <i class="fas fa-chart-bar"></i>
            </div>
            <div class="row">
                <div class="title">
                    Review
                </div>
            </div>
        </div>

        <div class="navigation-tab">
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

    <div class="slideshow-container">


        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img <?php srcIMG("welcome_picture1.svg") ?> class="center-img">
            <!-- <div class="text">Caption Text</div> -->
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
            <img <?php srcIMG("welcome_picture2.svg") ?> class="center-img">
            <!-- <div class="text">Caption Two</div> -->
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
            <img <?php srcIMG("welcome_picture3.svg") ?> class="center-img">
            <!-- <div class="text">Caption Three</div> -->
        </div>

    </div>
    <br>

    <div style="text-align:center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("basic") ?>

    <?php linkJS("slideShow"); ?>

</body>

</html>