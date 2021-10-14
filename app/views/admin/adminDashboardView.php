<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS file -->
    <?php linkCSS('home'); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon('logo1.png'); ?>
</head>

<body>

    <?php linkPhp("navigationBarAdmin"); ?>
    <div class="navigation-item-container">

        <div class="navigation-tab" onclick="myFunction()">
            <div class="row">
                <i class="fa fa-rocket"></i>
            </div>
            <div class="row">
                <div class="title">
                    Toolkit
                </div>
            </div>
            <div class="dropdown-content" id="dropdown-content">
                <a id="create-users-btn">Create multiple accounts</a>
                <a id="manage-accounts-btn">Manage multiple accounts</a>
            </div>
        </div>

        <div class="navigation-tab" onclick="window.location='<?php echo BASEURL . '/userDetails/index'; ?>' ">
            <div class="row">
                <i class="fas fa-user"></i>
            </div>
            <div class="row">
                <div class="title">
                    Users
                </div>
            </div>
        </div>

        <div class="navigation-tab" onclick="window.location='<?php echo BASEURL . '/courseDetails/index'; ?>' ">
            <div class="row">
                <i class="fa fa-graduation-cap"></i>
            </div>
            <div class="row">
                <div class="title">
                    Courses
                </div>
            </div>
        </div>

        <div class="navigation-tab">
            <div class="row">
                <i class="fa fa-certificate"></i>
            </div>
            <div class="row">
                <div class="title">
                    Badges
                </div>
            </div>
        </div>

        <!-- The Create Users Modal -->
        <div id="create-users-model" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <span class="close" id="close-one">&times;</span>
                    <h2>Create multiple user accounts</h2>
                </div>

                <div class="modal-body">
                    <p>Use this format to enter details using .csv file</p>
                    <button onclick="<?php echo "location.href=" . "'" . BASEURL . "/adminDashboard/download" . "'" ?>">Download template</button>

                    <br><br>
                    <p>
                        Use this format to enter details using .txt file<br>
                        &emsp;FirstName LastName EmailAddress IndexNo<br>
                        &emsp;eg: Surani Ratnayake suraniratnayake@gmail.com 19001411<br><br>
                        <strong>Note:</strong>Each user should be in a newline<br><br>
                    </p>
                    <form action="<?php echo BASEURL . "/adminDashboard/submit" ?>" method="post" enctype="multipart/form-data">
                        Upload file:
                        <input type="file" name="fileToUpload" id="fileToUpload">
                        <input type="submit" value="Add users" name="submit" class="upload-btn">
                    </form>
                </div>
            </div>

        </div>

        <!-- The Manage Users Modal -->
        <div id="manage-users-model" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <span class="close" id="close-two">&times;</span>
                    <h2>Manage multiple user accounts</h2>
                </div>
                <div class="modal-body">
                    <form action="<?php echo BASEURL . "/adminDashboard/manageCourseParticiption" ?>" method="post">
                        <div class="radio-btn">
                            <input type="radio" id="assign-users" name="option" checked="checked">
                            <label for="assign-users">Assign multiple users</label><br>

                            <input type="radio" id="delete-users" name="option">
                            <label for="delete-users">Delete multiple users</label><br>
                        </div>

                        <div class="year-selection">
                            <label for="year">Select the year</label>
                            <select name="year" id="year">
                                <option value="all_year" selected>All years</option>
                                <option value="1st_year">1st year</option>
                                <option value="2nd_year">2nd year</option>
                                <option value="3rd_year">3rd year</option>
                                <option value="4th_year">4th year</option>
                            </select>
                        </div>

                        <div class="course-selection">
                            <label for="COURSE">Select the course module</label>
                            <select name="COURSE" id="COURSE">
                                <option value="course_00" selected>No course selected</option>
                                <option value="course_01">course_01</option>
                                <option value="course_02">course_02</option>
                            </select>
                        </div>

                        <input id="manage-users-btn" type="submit" value="Assign users" name="submit" class="upload-btn">
<!--                        <input id="add-users-btn" type="submit" value="Assign users" name="submit" class="upload-btn">-->
<!--                        <input id="delete-users-btn" type="submit" value="Delete users" name="submit" class="upload-btn">-->

                    </form>
                </div>
            </div>

        </div>

    </div>


    <div class="slideshow-container">


        <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img <?php srcIMG("welcome_picture1.svg") ?> class="center-img">
            <!-- <div class="text">Caption Text</div> -->
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
            <img <?php srcIMG("welcome_picture2.svg") ?> class="center-img">
            <!-- <div class="text">Caption Two</div> -->
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
            <img <?php srcIMG("welcome_picture3.svg") ?> class="center-img">
            <!-- <div class="text">Caption Three</div> -->
        </div>

    </div>
    <br>

    <div style="text-align:center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("basic") ?>

    <?php linkJS("slideShow"); ?>

    <?php linkJS("courseDetails"); ?>

    <?php linkJS("dashboard_boost"); ?>

    <?php linkJS("dashboard_boost_modaltwo"); ?>

    <?php linkJS("adminDashboardCourseDisplay"); ?>

    <?php linkJS("adminDashboardModal"); ?>
</body>

</html>