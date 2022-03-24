<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("course_profile"); ?>
    <?php linkCSS("success_message"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body onload="setDefaultCookieValues()">

<?php linkPhp("navigationBarAdmin"); ?>

<?php linkPhp("successMessage");
printSucessMsg($data["success"]); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="http://localhost/ALec/courseDetails/index">Course page</a></li>
    <li>Course profile</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>
            <?php echo $data["courseDetails"]["course_name"]; ?>
        </header>
    </div>

    <div class="user-details-container">

        <!--        First layer with edit, delete buttons-->
        <div class="top">
            <div class="buttons-right">
                <?php
                echo " <button type='button' name='edit-user' value='Edit user' onclick=location.href='";
                echo BASEURL . '/courseEdit/index/' . $data["courseDetails"]["course_id"];
                echo "'>";
                echo "Edit Course</button>";
                ?>

                <?php
                $link = "'" . "courseProfile/deleteCourse/" . $data["courseDetails"]["course_id"] . "'";

                echo
                    '<button type="button" name="dlt-user" value="Delete user" onclick="deleteFunction(' . $link . ')">';
                echo "Delete Course</button>";
                ?>
            </div>
        </div>

        <!--        Second layer with manage users, badges buttons-->
        <div class="middle">
            <div class="buttons-left">
                <?php
                echo " <button type='button' name='edit-user' value='Edit user' onclick=location.href='";
                echo BASEURL . '/manageUser/index/' . $data["courseDetails"]["course_id"];
                echo "'>";
                echo "Lecturers</button>";
                ?>

                <?php
                echo " <button type='button' name='edit-user' value='Edit user' onclick=location.href='";
                echo BASEURL . '/manageUser/index/' . $data["courseDetails"]["course_id"] . '/stu';
                echo "'>";
                echo "Students</button>";
                ?>

                <button type="button" name="badges" value="Badges">Badges</button>
            </div>
        </div>

        <!--        Third layer having course details -->
        <div class="bottom">
            <div>
                <span class="head">Course Description : </span>
                <div class="content">
                    <?php echo $data["courseDetails"]["course_description"]; ?>
                </div>
            </div>
            <div>
                <span class="head">Assigned Lecturers :</span>
                <div class="content">

                    <?php
                    while ($row = mysqli_fetch_assoc($data["lecturerDetails"])) {
                        echo "<span>" . $row["name"] . "</span>";
                    }
                    ?>

                </div>
            </div>
            <div>
                <span class="head">No.of students :</span>
                <span><?php echo $data["studentCount"]; ?></span>
            </div>

        </div>
    </div>

</div>

<?php linkPhp("footer"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("courseProfile"); ?>

<?php linkJS("successMessage"); ?>

<?php linkJS("deleteMessage"); ?>

</body>

</html>