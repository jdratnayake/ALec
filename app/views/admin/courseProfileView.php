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

<body>

<?php linkPhp("navigationBarAdmin"); ?>

<div class="details-content">
    <div class="header-container">
        <header>
            SCS 1201 - Data structures and Algorithms - I
        </header>
    </div>

    <div class="user-details-container">
        <!--                Left bar include the user profile picture, bio and the edit user and delete user buttons.-->
<!--        <div class="left-bar">-->
<!--            <img --><?php //srcIMG("user_avatar.png"); ?><!-- alt="User image">-->
<!--            <div class="bio">-->
<!--                <span><strong>Pansilu Gunaratna</strong></span>-->
<!--                <span>Student</span>-->
<!--                <span>19000472</span>-->
<!--            </div>-->
<!--            <div class="buttons">-->
<!--                <button type="button" name="edit-user" value="Edit user">Edit User</button>-->
<!--                <button type="button" name="dlt-user" value="Delete user">Delete User</button>-->
<!--            </div>-->
<!--        </div>-->

        <!--                Right bar include small seperate boxes of user details, asigned courses and badges earned-->
<!--        <div class="right-bar">-->
            <div class="top">
                <div class="buttons-right">
                    <button type="button" name="edit-user" value="Edit user">Edit Course</button>
                    <button type="button" name="dlt-user" value="Delete user">Delete Course</button>
                </div>
            </div>
            <div class="middle">
                <div class="buttons-left">
                    <button type="button" name="edit-user" value="Edit user">Manage Users</button>
                    <button type="button" name="dlt-user" value="Edit user">Badges</button>
                </div>
            </div>
            <div class="bottom">
                <div>
                    <span class="head">No.of students :</span>
                    <span>298</span>
                </div>
                <div>
                    <span class="head">Assigned Teachers :</span>
                    <div class="tea">
                        <span>Dr. HND Thilini</span>
                        <span>Dr. MDJS Gunathilake</span>
                    </div>
                </div>
                    <span class="head">Assigned Students : </span>

                    <div class="table">
                        <table>
                            <thead>
                                <th>No.</th>
                                <th>Reg No.</th>
                                <th>Student Name</th>
                            </thead>
                            <tbody>
                            <?php
                            for($i=1; $i<10; $i++){
                                echo "<tr>";
                                echo '<td>'.$i."</td>";
                                echo '<td id="userNo">2019/CS/00'.$i."</td>";
                                echo "<td>Student Name ".$i."</td>";
                                echo "<tr>";
                            }
                            for($i=10; $i<20; $i++){
                                echo "<tr>";
                                echo '<td>'.$i."</td>";
                                echo '<td id="userNo">2019/CS/0'.$i."</td>";
                                echo "<td>Student Name ".$i."</td>";
                                echo "<tr>";
                            }
                            ?>
                            </tbody>
                        </table>
                    </div>
            </div>
        </div>

    </div>


<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

</html>
