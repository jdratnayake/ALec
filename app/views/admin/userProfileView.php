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
        <li>View User</li>
    </ul>

    <div class="details-content">
        <div class="header-container">
            <header>User Profile</header>
        </div>

        <div class="user-details-container">
            <!--                Left bar include the user profile picture, bio and the edit user and delete user buttons.-->
            <div class="left-bar">
                <img <?php srcIMG("user_avatar.png"); ?> alt="User image">
                <div class="bio">
                    <span><strong><?php echo $data["userDetails"]["name"]; ?></strong></span>
                    <span><?php echo $data["userDetails"]["type"]; ?></span>
                    <span><?php echo $data["userDetails"]["regNo"]; ?></span>
                </div>
                <div class="buttons">
                    <?php
                    echo " <button type='button' name='edit-user' value='Edit user' onclick=location.href='";
                    echo BASEURL . '/userEdit/index/' . $data["userDetails"]["user_id"];
                    echo "'>";
                    echo "Edit User</button>";
                    ?>

                    <?php
                    $link = "'" .  "userProfile/deleteUser/" . $data["userDetails"]["user_id"] . "'";

                    echo " <button type='button' name='dlt-user' value='Delete user' ";
                    echo 'onclick="deleteFunction(' . $link . ')"';
                    echo "'>";
                    echo "Delete User</button>";
                    ?>

                    <button id="modal-btn">Assign Courses</button>
                </div>
            </div>

            <!-- Course Selection Modal -->
            <div id="course-selection-modal" class="modal">

                <!-- Modal content -->
                <div class="modal-content">
                    <div class="modal-header">
                        <span id="close" class="close">&times;</span>
                        <h2>Course Selection</h2>
                    </div>

                    <div class="modal-body">
                        <label for="courses"><strong>Select Course:</strong></label>
                        <select name="course" id="courses" class="selection-box">
                            <option value="default" selected>Select a course</option>

                            <?php
                            while ($row = mysqli_fetch_assoc($data["unAssignedCourseDetails"])) {
                                echo
                                "
                                <option value='{$row['course_id']}'>{$row['course_name']}</option>
                                ";
                            }
                            ?>

                            <!-- <option value="sub1">SCS 1201 - Data Structures and Algorithms - I</option> -->
                        </select>

                        <!--                    List of assigned courses-->
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
                                    <span class='remove-course'>&times;</span>
                                </li>
                                ";
                            }
                            ?>

                            <!-- <li class="assigned-course">SCS 2214 - Information system security
                                <span class="remove-course">&times;</span>
                            </li> -->
                        </ul>

                    </div>

                    <form action="<?php echo BASEURL . "/userProfile/assignCourse/" . $data["userId"] . "/" .  $data["userDetails"]["type"] ?>" method="POST">
                        <input type="hidden" name="current-assigned-courses" id="current-assigned-courses" value="<?php echo $assignedCourses; ?>">

                        <input type="submit" value="Apply">
                    </form>
                </div>

            </div>

            <!-- Right bar include small separate boxes of user details, assigned courses and badges earned-->
            <div class="right-bar">
                <div class="pvt-details">
                    <span>User Details</span>
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
                    <span>Course Details</span>
                    <?php

                    foreach ($courseDetails as $row) {
                        echo "<span>{$row['course_name']}</span>";
                    }
                    ?>
                </div>

                <?php
                if ($data["userDetails"]["type"] == "Student") {
                    echo "<div class='badges'>";
                    echo "<span>Badges</span>";

                    while ($row = mysqli_fetch_assoc($data["badgeDetails"])) {
                        echo '<span> <i class="fa fa-certificate" aria-hidden="true"></i>';
                        echo "<span>" . $row['badge_name'] . "</span>";
                        echo "</span>";
                    }

                    echo "</div>";
                }
                ?>
            </div>

        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notification"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("userProfileModal"); ?>

    <?php linkJS("successMessage"); ?>

    <?php linkJS("deleteMessage"); ?>
</body>

</html>