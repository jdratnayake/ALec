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
        <li>Badges</li>
    </ul>

    <div class="details-content">
        <div class="header-container">
            <header>Badges</header>
            <div class="course-selection">
                <label for="course-selection"></label>
                <select name="course-selection" id="course-selection" class="course-dropdown">
                    <option value="No course selected" selected>--No course selected--</option>
                    <option value="course-1">SCS 1201 - DATA STRUCTURES AND ALGORITHMS - I</option>
                    <option value="course-2">SCS 1209 - DATA STRUCTURES AND ALGORITHMS - II</option>
                </select>
            </div>
        </div>

        <div class="button-container">
            <button type="button" value="Add Badge" class="add-btn" onclick="window.location='<?php echo BASEURL . '/badge/create'; ?>' ">Add Badge</button>
        </div>

        <?php

        if ($data["emptySignal"] == 0) {
            //
        } else {
            echo
            "
            <div class='content'>
                <div class='content-message'>
                    <i class='fa fa-spinner' aria-hidden='true'></i>
                    No course selected
                </div>
            </div>
            ";
        }

        ?>

        <!-- <div class="badge-details-container">
            <h3 class="course-label">SCS 1201 - DATA STRUCTURES AND ALGORITHMS - I</h3>
            <div class="badge-details">
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
        </div> -->

    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>