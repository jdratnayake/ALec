<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("profile_details"); ?>

<!--    --><?php //linkCSS("modal_styles"); ?>

    <?php linkCSS("success_message"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

</head>

<body>

    <?php linkPhp("navigationBarAdmin"); ?>

    <?php linkPhp("successMessage");
    printSucessMsg($data["success"]); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/userDetails/index">User details</a></li>
        <li>View user</li>
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
                        <span class="close">&times;</span>
                        <h2>All courses available</h2>
                    </div>

                    <div class="modal-body">
                        <strong>Courses:</strong>

                        <p>Use this format to enter details using .csv file</p>
                        <button onclick="" id="btn-create-download">Download template
                        </button>

                        <br><br>
                        <p>
                            Use this format to enter details using .txt file<br>
                            &emsp;FirstName LastName EmailAddress <span id="regNo">IndexNo</span><br>
                            &emsp;eg: Surani Ratnayake suraniratnayake@gmail.com 19001411<br><br>
                            <strong>Note:</strong>Each user should be in a newline<br><br>
                        </p>
                    </div>
                </div>

            </div>

            <!-- Right bar include small separate boxes of user details, assigned courses and badges earned-->
            <div class="right-bar">
                <div class="pvt-details">
                    <span>User Details</span>
                    <span><strong>Full Name : </strong><?php echo $data["userDetails"]["name"]; ?></span>
                    <span><strong>Email : </strong><?php echo $data["userDetails"]["email"]; ?></span>
                    <span><strong>Telephone No : </strong><?php echo $data["userDetails"]["tele"]; ?></span>
                </div>

                <div class="course-details">
                    <span>Course Details</span>
                    <?php
                    while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
                        echo "<span>${row['course_name']}</span>";
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

    <?php linkPhp("userProfileModal"); ?>

    <?php linkJS("successMessage"); ?>

    <?php linkJS("deleteMessage"); ?>
</body>

</html>