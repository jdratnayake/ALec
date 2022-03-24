<?php
$assignedCourses = "";

$courseDetails = mysqli_fetch_all($data["courseDetails"], MYSQLI_ASSOC);
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

            <!-- Details Container include small separate boxes of button content, user details, assigned courses and badges earned-->
            <div class="details-container">
                <div class="buttons">

                    <!-- Edit user -->
                    <?php
                    echo " <button type='button' id='edit-btn' name='edit-user' value='Edit user' onclick=location.href='";
                    echo BASEURL . '/userEdit/index/' . $data["userDetails"]["user_id"];
                    echo "'>";
                    echo "Edit User</button>";
                    ?>

                    <!-- Delete user -->
                    <?php
                    $link = "'" .  "userProfile/deleteUser/" . $data["userDetails"]["user_id"] . "'";

                    echo " <button type='button' id='delete-btn' name='dlt-user' value='Delete user' ";
                    echo 'onclick="deleteFunction(' . $link . ')"';
                    echo "'>";
                    echo "Delete User</button>";
                    ?>

                    <button id="modal-btn">Assign Courses</button>
                </div>

                <div class="horizontal-container">
                    <div class="pvt-details">
                        <span class="heading">User Details</span>
                        <span><strong>Full Name : </strong></span>
                        <span class="detail"><?php echo $data["userDetails"]["name"]; ?></span>
                        <?php
                        if ($data["userDetails"]["type"] == "Student") {
                            echo "<span><strong>Given Name : </strong></span>
                                    <span>{$data["userDetails"]["randomName"]} </span>";
                        }
                        ?>
                        <span><strong>Email : </strong></span>
                        <span class="detail"><?php echo $data["userDetails"]["email"]; ?></span>
                        <span><strong>Telephone No : </strong></span>
                        <span class="detail"><?php echo $data["userDetails"]["tele"]; ?></span>
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
        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("successMessage"); ?>

    <?php linkJS("deleteMessage"); ?>

    <?php linkJS("userProfileModal"); ?>
</body>

</html>