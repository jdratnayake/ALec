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

                    <?php
                    if ($data["emptySignal"] == 0) {
                        echo "<option value=''>--No course selected--</option>";
                    } else {
                        echo "<option value='' selected>--No course selected--</option>";
                    }

                    while ($row = mysqli_fetch_assoc($data["courseDetailsDropdown"])) {

                        if (isset($data["courseDetails"]["course_id"]) && $data["courseDetails"]["course_id"] == $row["course_id"]) {
                            echo
                            "
                            <option value='{$row["course_id"]}' selected>{$row["course_name"]}</option>
                            ";
                        } else {
                            echo
                            "
                            <option value='{$row["course_id"]}'>{$row["course_name"]}</option>
                            ";
                        }
                    }

                    ?>

                    <!-- <option value='course-1'>SCS 1201 - DATA STRUCTURES AND ALGORITHMS - I</option> -->
                </select>
            </div>
        </div>

        <div class="button-container">
            <button type="button" value="Add Badge" class="add-btn" onclick="window.location='<?php echo BASEURL . '/badge/create'; ?>' ">Add Badge</button>
        </div>

        <?php

        if ($data["emptySignal"] == 0) {
            echo
            "
            <div class='badge-details-container'>
                <h3 class='course-label'>{$data["courseDetails"]["course_name"]}</h3>

                <div class='badge-details'>
                    <div class='badges'>";

            while ($row = mysqli_fetch_assoc($data["badgeDetails"])) {
                echo
                "
                        <div class='badge'>
                        <i class='fa fa-trash' aria-hidden='true'></i>
                            <img " . srcBadgeIMG($row["badge_image"]) . " alt='Badge Image'>
                            <span>{$row["badge_name"]}</span>
                        </div>
                ";
            }

            echo
            "
                    </div>
                </div>
            </div>
            ";
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

    </div>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("badgesDisplay") ?>

</body>

</html>