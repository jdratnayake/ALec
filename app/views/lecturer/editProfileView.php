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
    <?php shortIcon("logo1.png"); ?>

</head>

<body>

<?php linkPhp("navigationBarLecturer"); ?>

<div class="details-content">
    <div class="header-container">
        <header>
            User Profile
        </header>
    </div>

    <div class="user-details-container">
        <!--                Left bar include the user profile picture, bio and the edit user and delete user buttons.-->
        <div class="left-bar">
            <img <?php srcIMG("user_avatar.png"); ?> alt="User image">
            <div class="bio">
                <span><strong>JOHN STARLING</strong></span>
                <span>Lecturer</span>
                <span>19000000</span>
            </div>
            <div class="miscel">
                <span>Miscellaneous</span>
                <span>Forum Posts</span>
                <span>Forum Discussions</span>
            </div>
        </div>

<!--    Right bar include small separate boxes of user details, assigned courses and badges earned-->
        <div class="right-bar">
            <div class="pvt-details">
                <span>User Details</span>
                <span>
                    <strong>First Name : </strong>
                    <span id="fname" class="editable">JOHN</span>
                </span>
                <span>
                    <strong>Last Name : </strong>
                    <span id="lname" class="editable">STARLING</span>
                </span>
                <span>
                    <strong>Email : </strong>
                    <span id="email" class="editable">starling23@lec.alec.com</span>
                </span>
                <span>
                    <strong>Telephone No : </strong>
                    <span id="tele" class="editable">0745623000</span>
                </span>
                <button onclick="edit(this);" class="buttons"><i class="fa fa-pencil" aria-hidden="true"></i>Edit</button>
            </div>
            <div class="course-details">
                <span>Course Details</span>
                <span>SCS2201 Data Structures and Algorithms III</span>
                <span>SCS2202 Group Project I</span>
                <span>SCS2203 Software Engineering III</span>
                <span>SCS2204 Functional Programming</span>
                <span>SCS2205 Computer Networks I</span>
                <span>SCS2206 Mathematical Methods II</span>
                <span>SCS2207 Programming Language Concepts</span>
                <span>SCS2208 Rapid Application Development</span>
            </div>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

<?php linkJS("editProfile"); ?>

</body>

</html>
