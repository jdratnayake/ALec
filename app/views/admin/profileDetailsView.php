<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("profile_details"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

</head>

<body>

    <?php linkPhp("navigationBarAdmin"); ?>

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
                    <span><strong>Pansilu Gunaratna</strong></span>
                    <span>Student</span>
                    <span>19000472</span>
                </div>
                <div class="buttons">
                    <button type="button" name="edit-user" value="Edit user">Edit User</button>
                    <button type="button" name="dlt-user" value="Delete user">Delete User</button>
                </div>
            </div>

            <!--                Right bar include small seperate boxes of user details, asigned courses and badges earned-->
            <div class="right-bar">
                <div class="pvt-details">
                    <span>User Details</span>
                    <span><strong>Full Name : </strong>Pansilu Gunaratna</span>
                    <span><strong>Email : </strong>ppg@gmail.com</span>
                    <span><strong>Telephone No : </strong>0812454777</span>
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
                <div class="badges">
                    <span>Badges</span>
                    <span>
                        <i class="fa fa-certificate" aria-hidden="true"></i>
                        SCS2201 - Best question
                    </span>
                    <span>
                        <i class="fa fa-certificate" aria-hidden="true"></i>
                        SCS2205 - Best question
                    </span>
                    <span>
                        <i class="fa fa-certificate" aria-hidden="true"></i>
                        SCS2206 - Best answer
                    </span>
                </div>
            </div>


        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notification"); ?>

</body>

</html>