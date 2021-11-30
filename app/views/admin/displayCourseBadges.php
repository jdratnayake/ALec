<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Course Badges</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_badges"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarAdmin"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="http://localhost/ALec/courseDetails/index">Course Details</a></li>
    <li><a href="#">Course Profile</a></li>
    <li>Badges</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>Badges</header>
    </div>

    <div class="badge-details-container">
        <div class="badges">
            <div class="badge">
                <img <?php srcIMG("BadgeQuestioner.png"); ?> alt="Badge Image">
                <span>Questioner of the year - 2021</span>
            </div>
            <div class="badge">
                <img <?php srcIMG("BadgeRespondent.png"); ?> alt="Badge Image">
                <span>Respondent of the year - 2021</span>
            </div>
            <div class="badge">
                <img <?php srcIMG("BadgeQuestioner.png"); ?> alt="Badge Image">
                <span>Questioner of the week - 14</span>
            </div>
            <div class="badge">
                <img <?php srcIMG("BadgeRespondent.png"); ?> alt="Badge Image">
                <span>Respondent of the week - 12</span>
            </div>
            <div class="badge">
                <img <?php srcIMG("BadgeQuestioner.png"); ?> alt="Badge Image">
                <span>Questioner of the month - Nov</span>
            </div>
            <div class="badge">
                <img <?php srcIMG("BadgeRespondent.png"); ?> alt="Badge Image">
                <span>Respondent of the month - Feb</span>
            </div>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

</html>


