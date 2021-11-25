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
        <form action="<?php echo BASEURL . "/createBadge/submit" ?>" method="post" class="details" enctype="multipart/form-data">
            <div>
                <!-- select course drop down list -->
                <div class="form-group">
                    <label for="course" class="form-control-label">Course name</label>
                    <select name="course" id="course" class="form-control">
                        <option value="null" selected>Select your course</option>
                        <?php

                        while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
                            echo
                            "
                            <option value='{$row['course_id']}'>{$row['course_name']}</option>
                            ";
                        }

                        ?>
                    </select>

                    <div class="error"></div>
                </div>

                <!-- badge name-->
                <div class="form-group">
                    <label for="badge-name" class="form-control-label">Badge name</label>
                    <input type="text" class="form-control form-input" placeholder="Enter badge name" name="badge-name" id="badge-name">

                    <div class="error"></div>
                </div>

                <!-- badge image-->
                <div class="form-group">
                    <label for="badge-image" class="form-control-label badge-label">Badge image</label>
                </div>

            </div>

            <?php linkPhp("fileUpload") ?>

            <div class="button-set">
                <label for="create-badge-btn"></label>
                <input type="submit" id="create-badge-btn" name="create-badge-btn" class="finish" value="Create Badge">
            </div>
        </form>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("fileUpload") ?>

</body>

</html>