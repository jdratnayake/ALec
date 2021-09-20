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

        <!--        First layer with edit, delete buttons-->
        <div class="top">
            <div class="buttons-right">
                <button type="button" name="edit-user" value="Edit user">Edit Course</button>
                <button type="button" name="dlt-user" value="Delete user">Delete Course</button>
            </div>
        </div>

        <!--        Second layer with manage users, badges buttons-->
        <div class="middle">
            <div class="buttons-left">
                <button type="button" name="edit-user" value="Edit user">Manage Users</button>
                <button type="button" name="dlt-user" value="Edit user">Badges</button>
            </div>
        </div>

        <!--        Third layer having course details -->
        <div class="bottom">
            <div>
                <span class="head">Course Description : </span>
                <div class="content">
                    Introduces different data structures used in programming such as lists, stacks,
                    and queues, trees, several types of linked lists and their applications and
                    implementation.
                </div>
            </div>
            <div>
                <span class="head">Assigned Lecturers :</span>
                <div class="content">
                    <span>Dr. HND Thilini</span>
                    <span>Dr. MDJS Gunathilake</span>
                    <span>
                        <a href="#"><i class="fa fa-pencil" aria-hidden="true"></i> Assign </a>
                    </span>
                </div>
            </div>
            <div>
                <span class="head">No.of students :</span>
                <span>298</span>
            </div>

        </div>
    </div>

</div>


<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

</html>
