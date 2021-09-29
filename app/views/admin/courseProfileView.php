<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("course_profile"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

</head>

<body onload="setDefaultCookieValues()">

    <?php linkPhp("navigationBarAdmin"); ?>

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
                    <button type="button" name="edit-user" value="Edit user">Edit Course</button>
                    <?php
                    echo " <button type='button' name='dlt-user' value='Delete user' onclick=location.href='";
                    echo BASEURL . '/courseProfile/deleteCourse/' . $data["courseDetails"]["course_id"];
                    echo "'>";
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

                    <button type="button" name="dlt-user" value="Edit user">Badges</button>
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

    <?php linkPhp("notification"); ?>

    <?php linkJS("courseProfile"); ?>

</body>

</html>