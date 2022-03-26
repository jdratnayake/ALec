<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("edit_profile"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>

    <?php

    if ($data["userDetails"]["user_type"] == "admin") {
        linkPhp("navigationBarAdmin");
    } else if ($data["userDetails"]["user_type"] == "Lecturer") {
        linkPhp("navigationBarLecturer");
    } else if ($data["userDetails"]["user_type"] == "Student") {
        linkPhp("navigationBarStudent");
    }

    ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li>Edit profile</li>
    </ul>

    <div class="details-content">

        <div class="user-details-container">
            <div class="header-bar">

                <?php

                if (empty($data["userDetails"]["img"])) {
                    $imgPath = "user_avatar.png";
                } else {
                    $imgPath = "../pic_data/{$data["userDetails"]["img"]}";
                }

                ?>

                <img <?php srcIMG($imgPath); ?> alt="User image">
                <div class="bio">
                    <span><?php echo $data["userDetails"]["first_name"] . " " . $data["userDetails"]["last_name"]; ?></span>
                    <span><?php echo $data["userDetails"]["user_type"]; ?></span>
                    <span><?php echo $data["userDetails"]["reg_no"]; ?></span>
                </div>
            </div>

            <div class="button-container">
                <button id="btn-upload" class="buttons"><i class="fa fa-id-badge" aria-hidden="true"></i>Change Picture
                </button>

                <form action="<?php echo BASEURL . "/editProfile/upload" ?>" method="post" enctype="multipart/form-data" style="display:none" id="image-upload">
                    Upload file:
                    <input type="file" name="fileToUpload" id="fileToUpload">
                    <button type="submit" value="upload-pic" class="buttons"><i class="fa fa-upload" aria-hidden="true"></i>Upload
                        Picture
                    </button>
                    <button id="btn-upload-cancel" class="buttons cancel"><i class="fa fa-ban" aria-hidden="true"></i>Cancel
                    </button>
                </form>
            </div>

            <div class="details-container">
                <!--                Left bar include the bio and miscellaneous-->
                <div class="left-bar">
                    <form action="<?php echo BASEURL . "/editProfile/submit" ?>" method="POST">
                        <div class="pvt-details">
                            <span>User Details</span>
                            <span class="form-group">
                                <label for="fName">First Name :</label>
                                <input type="text" id="fName" name="fName" value="<?php echo $data["userDetails"]["first_name"]; ?>" class="" disabled>
                            </span>
                            <span class="form-group">
                                <label for="lName">Last Name :</label>
                                <input type="text" id="lName" name="lName" value="<?php echo $data["userDetails"]["last_name"]; ?>" class="" disabled>
                            </span>
                            <span class="form-group">
                                <label for="email">Email :</label>
                                <input type="text" id="email" name="email" value="<?php echo $data["userDetails"]["email"]; ?>" class="" disabled>
                            </span>
                            <span class="form-group">
                                <label for="tele">Tele. No :</label>
                                <input type="text" id="tele" name="tele" value="<?php echo $data["userDetails"]["tele"]; ?>" class="" disabled>
                            </span>

                            <div class="save-buttons">
                                <button id="btn-save" type="submit" value="Save" class="buttons" style="display: none">
                                    <i class="fa fa-floppy-o" aria-hidden="true"></i>Save
                                </button>
                                <button id="btn-cancel" type="reset" value="Cancel" class="buttons cancel" style="display: none">
                                    <i class="fa fa-ban" aria-hidden="true"></i>Cancel
                                </button>
                            </div>

                            <button class="buttons" id="btn-edit">
                                <i class="fa fa-pencil" aria-hidden="true"></i>Edit
                            </button>
                        </div>
                    </form>
                    <div class="miscel">
                        <span>Miscellaneous</span>
                        <span>Forum Posts</span>
                        <span>Forum Discussions</span>
                    </div>
                </div>

                <!--    Right bar include small separate boxes of user details, assigned courses and badges earned-->
                <div class="right-bar">
                    <div class="course-details">
                        <span>Course Details</span>
                        <?php

                        if ($data["courseDetails"] != false) {
                            while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
                                echo
                                "
                                <span>{$row["course_name"]}</span>
                                ";
                            }
                        }

                        ?>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("editProfile"); ?>

</body>

</html>