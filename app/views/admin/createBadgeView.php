<?php
$errors = $data["errors"];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>ALec</title>

    <?php linkCSS("create_badge") ?>

    <?php linkCSS("fileUpload") ?>

</head>

<body>
    <?php linkPhp("navigationBarAdmin"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li>Create Badge</li>
    </ul>

    <div class="form-content">

        <!-- Heading -->
        <header>Create Badge</header>

        <!-- Badge details -->
        <form action="<?php echo BASEURL . "/createBadge/index" ?>" method="post" class="details" enctype="multipart/form-data" id="registerBadgeForm" onsubmit="validateAll()">

            <div id="input-list">
                <!-- select course drop down list -->
                <div class="form-group">
                    <div class="form-line">
                        <label for="course" class="form-control-label">Course name</label>
                        <select name="course" id="course" class="form-control" onfocusout="validateCourse()">
                            <option value="null" selected>Select Your Course</option>
                            <option value="all">All Courses</option>

                            <?php

                            while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
                                echo
                                "
                                <option value='{$row['course_id']}'>{$row['course_name']}</option>
                                ";
                            }

                            ?>

                        </select>
                        <input type="hidden" id="course-id-list" value="" name="course-id-list">
                    </div>

                    <div class="error"><?php echo $errors["courseName"] ?></div>
                </div>

                <div class="course-display">
                    <div class="form-line">
                    <!-- List of selected courses-->
                    <ul style="list-style-type: none" class="selected-courses" id="selected-courses">

                    </ul>
                    </div>
                </div>

                <!-- badge name-->
                <div class="form-group">
                    <div class="form-line">
                        <label for="badge-name" class="form-control-label">Badge name</label>
                        <input type="text" class="form-control form-input" placeholder="Enter badge name" name="badge-name" id="badge-name" onfocusout="validateBadgeName()">
                    </div>
                    <div class="error"><?php echo $errors["badgeName"] ?></div>
                </div>

                <!-- badge description-->
                <div class="form-group">
                    <div class="form-line">
                        <label for="badge-description" class="form-control-label">Badge description</label>
                        <input type="text" class="form-control form-input" placeholder="Enter badge description" name="badge-description" id="badge-description">
                    </div>
                    <div class="error"></div>
                </div>

                <!-- badge points-->
                <div class="form-group">
                    <div class="form-line">
                        <label for="badge-points" class="form-control-label">Badge points</label>
                        <input type="number" class="form-control form-input" id="badge-points" name="badge-points" min="0" max="100" step="10" placeholder="Enter no.of points for the badge" value="0">
<!--                        <input type="number" class="form-control form-input" placeholder="Enter no.of points for the badge" name="badge-points" id="badge-points" value="0" onfocusout="validatePoints()">-->
                    </div>
                    <div class="error"><?php echo $errors["points"] ?></div>
                </div>

                <!-- badge image-->
                <div class="form-group">
                    <div class="form-line">
                        <label for="badge-image" class="form-control-label badge-label">Badge image</label>
                    </div>
                </div>

            </div>

            <?php linkPhp("fileUpload") ?>
            <div class="error"><?php echo $errors["image"] ?></div>

            <div class="button-set">
                <label for="create-badge-btn"></label>
                <input type="submit" id="create-badge-btn" name="create-badge-btn" class="finish" value="Create Badge">
            </div>
        </form>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("createBadge") ?>

    <?php linkJS("fileUpload") ?>

    <?php linkJS("badgeValidation") ?>

</body>

</html>