<!--User profile view of Lecturer-->

<?php
$assignedCourses = "";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>View User</title>

    <!-- CSS File HOME-->
    <?php linkCSS("profile_details"); ?>

    <?php linkCSS("modal_styles"); ?>

    <?php linkCSS("success_message"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarAdmin"); ?>

<?php linkPhp("successMessage");
printSucessMsg($data["success"]); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="http://localhost/ALec/userDetails/index">User Details</a></li>
    <li>User Profile</li>
</ul>

<div class="details-content">
    <div class="user-details-container">

        <div class="header-bar">
            <img <?php srcIMG("user_avatar.png"); ?> alt="User image">
            <div class="bio">
                <span><?php echo $data["userDetails"]["name"]; ?></span>
                <span><?php echo $data["userDetails"]["type"]; ?></span>
                <span><?php echo $data["userDetails"]["regNo"]; ?></span>
            </div>
        </div>

        <!-- Course Selection Modal -->
        <div id="course-selection-modal" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <span id="close" class="close">&times;</span>
                    <h2>Badge Selection</h2>
                </div>

                <div class="modal-body">
                    <label for="badges"><strong>Select Badge:</strong></label>
                    <select name="badge" id="badges" class="selection-box">
                        <option value="default" selected>Select a badge</option>
                        <option value="sub1">Best Respondent - 2021</option>
                        <option value="sub2">Best Questioner - 2021</option>
                    </select>

                    <!--                    List of assigned badges-->
                    <ul style="list-style-type:none;" class="assigned-courses">
                        <?php
                        $courseDetails = mysqli_fetch_all($data["courseDetails"], MYSQLI_ASSOC);

                        foreach ($courseDetails as $row) {
                            $assignedCourses = $assignedCourses . " " . $row['course_id'];

                            echo
                            "
                                <li class='assigned-course'>
                                    <input type='hidden' class='course-id' value='{$row['course_id']}'>
                                    <span class='course-name'> {$row['course_name']} </span>
                                    <span class='remove-course'><i class='fa fa-trash' aria-hidden='true'></i></span>
                                </li>
                                ";
                        }
                        ?>

                        <!--                        <i class="fa fa-trash" aria-hidden="true"></i>-->

                        <!-- <li class="assigned-course">SCS 2214 - Information system security
                            <span class="remove-course">&times;</span>
                        </li> -->
                    </ul>

                </div>

                <!-- Store user ID -->
                <input type="hidden" id="user-id" value="<?php echo $data["userId"]; ?>">
                <!-- Store user type -->
                <input type="hidden" id="user-type" value="<?php echo $data["userDetails"]["type"]; ?>">
                <!-- Okay button in delete -->
                <input type="button" value="Okay" class="apply-button">
            </div>

        </div>

        <!-- Details Container include small separate boxes of button content, user details, assigned courses and badges earned-->
        <div class="details-container">
            <div class="buttons">
                <button id="edit-btn">Edit User</button>
                <button id="delete-btn">Delete User</button>
                <button id="modal-btn">Award Badge</button>
            </div>

            <div class="horizontal-container">
                <div class="pvt-details">
                    <span class="heading">User Details</span>
                    <span><strong>Full Name : </strong><?php echo $data["userDetails"]["name"]; ?></span>
                    <?php
                    if ($data["userDetails"]["type"] == "Student") {
                        echo "<span><strong>Given Name : </strong> {$data["userDetails"]["randomName"]} </span>";
                    }
                    ?>
                    <span><strong>Email : </strong><?php echo $data["userDetails"]["email"]; ?></span>
                    <span><strong>Telephone No : </strong><?php echo $data["userDetails"]["tele"]; ?></span>
                </div>

                <div class="course-details">
                    <span class="heading">Course Details</span>
                    <div class="course-content">
                        <?php

                        foreach ($courseDetails as $row) {
                            echo "<span>{$row['course_name']}</span>";
                        }
                        ?>
                    </div>
                </div>

            </div>

            <!--                --><?php
            //                $image1 = srcIMG("BadgeQuestioner.png");
            //                if ($data["userDetails"]["type"] == "Student") {
            //                    echo "<div class='badges'>";
            //                    echo "<span>Badges</span>";
            //
            //                    while ($row = mysqli_fetch_assoc($data["badgeDetails"])) {
            //                        echo '<span> <i class="fa fa-certificate" aria-hidden="true"></i>';
            //                        echo "<span>" . $row['badge_name'] . "</span>";
            //                        echo " <img  $image1 alt='Badge image' class='badge-image'> ";
            //                        echo "</span>";
            //                    }
            //
            //                    echo "</div>";
            //                }
            //                ?>

            <div class="badge-details">
                <span class="heading">Badges</span>
                <div class="badges">
                    <div class="badge">
                        <img <?php srcIMG("BadgeRespondent.png"); ?> alt="Badge Image" class="badge-image">
                        <span>Respondent of the week - 12</span>
                        <span class="issuer">Dr. D. K. Fernando</span>
                    </div>
                    <div class="badge">
                        <img <?php srcIMG("BadgeQuestioner.png"); ?> alt="Badge image" class="badge-image">
                        <span>Respondent of the week - 12</span>
                        <span class="issuer">Dr. Kasun De Soyza</span>
                    </div>
                    <div class="badge">
                        <img <?php srcIMG("BadgeRespondent.png"); ?> alt="Badge Image" class="badge-image">
                        <span>Respondent of the week - 12</span>
                        <span class="issuer">Mrs. Hirasha Pooliyadda</span>
                    </div>
                    <div class="badge">
                        <img <?php srcIMG("BadgeQuestioner.png"); ?> alt="Badge image" class="badge-image">
                        <span>Respondent of the week - 12</span>
                        <span class="issuer">Dr. D. K. Fernando</span>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

<?php linkJS("successMessage"); ?>

<?php linkJS("deleteMessage"); ?>

<?php linkJS("userProfileModal"); ?>
</body>

</html>