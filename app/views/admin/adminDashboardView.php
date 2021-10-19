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
                <a id="create-users-btn">Create Multiple Accounts</a>
                <a id="manage-accounts-btn">Manage Students Enrollment</a>
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
                    <h2>Create Multiple User Accounts</h2>
                </div>

                <div class="modal-body">
                    <strong>User type:</strong>
                    <div class="radio-btn">
                        <input type="radio" id="lecturers-create" name="user-type" checked="checked">
                        <label for="lecturers-create">Lecturers</label><br>

                        <input type="radio" id="students-create" name="user-type">
                        <label for="students-create">Students</label><br>
                    </div>

                    <p>Use this format to enter details using .csv file</p>
                    <button onclick="<?php echo "location.href=" . "'" . BASEURL . "/adminDashboard/download/1" . "'" ?>" id="btn-create-download">Download template</button>

                    <br><br>
                    <p>
                        Use this format to enter details using .txt file<br>
                        &emsp;FirstName LastName EmailAddress <span id="regNo">IndexNo</span><br>
                        &emsp;eg: Surani Ratnayake suraniratnayake@gmail.com 19001411<br><br>
                        <strong>Note:</strong>Each user should be in a newline<br><br>
                    </p>
                    <form action="<?php echo BASEURL . "/adminDashboard/submit" ?>" method="post" enctype="multipart/form-data">
                        Upload file:
                        <input type="hidden" name="upload-user-type" value="2">
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
                    <h2>Manage Students Enrollment</h2>
                </div>
                <div class="modal-body">
                    <form action="<?php echo BASEURL . "/adminDashboard/manageCourseParticiption" ?>" method="post">

                        <strong>Action:</strong>
                        <div class="radio-btn">
                            <input type="radio" id="assign-users" name="action" value="assign" checked="checked">
                            <label for="assign-users">Assign multiple students</label><br>

                            <input type="radio" id="delete-users" value="remove" name="action">
                            <label for="delete-users">Remove multiple students</label><br>
                        </div>

                        <strong>Enrollment mode:</strong>
                        <div class="radio-btn">
                            <input type="radio" id="year-mode" name="user-type" value="year" checked="checked">
                            <label for="year-mode">Year wise</label><br>

                            <input type="radio" id="file-mode" value="file" name="user-type">
                            <label for="file-mode">File upload</label><br>
                        </div>

                        <div class="year-selection" id="year-mode-div">
                            <label for="year">Select the year</label>
                            <select name="year" id="year">
                                <option value="null" selected>No year selected</option>
                                <option value="all">All years</option>
                                <option value="1">1st year</option>
                                <option value="2">2nd year</option>
                                <option value="3">3rd year</option>
                                <option value="4">4th year</option>
                            </select>
                        </div>

                        <div class="course-selection">
                            <label for="COURSE">Select the course module</label>
                            <select name="COURSE" id="COURSE">

                            </select>
                        </div>

                        <input id="manage-users-btn" type="submit" value="Add users" name="submit" class="assign-btn">

                        <div class="modal-body enrollment-file-upload" id="file-mode-div" style="display: none;">
                            <p>Use this format to enter details using .csv file</p>
                            <button onclick="<?php echo "location.href=" . "'" . BASEURL . "/adminDashboard/download/1" . "'" ?>" id="btn-create-download">Download template</button>

                            <br><br>
                            <p>
                                Use this format to enter details using .txt file<br>
                                &emsp;FirstName LastName EmailAddress <span id="regNo">IndexNo</span><br>
                                &emsp;eg: Surani Ratnayake suraniratnayake@gmail.com 19001411<br><br>
                                <strong>Note:</strong>Each user should be in a newline<br><br>
                            </p>
                            <form action="<?php echo BASEURL . "/adminDashboard/submit" ?>" method="post" enctype="multipart/form-data">
                                Upload file:
                                <input type="hidden" name="upload-user-type" value="2">
                                <input type="file" name="fileToUpload" id="fileToUpload">
                                <input type="submit" value="Enroll users" name="submit" class="upload-btn">
                            </form>
                        </div>

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

    <?php linkJS("adminDashboard"); ?>

    <?php linkJS("basic") ?>

    <?php linkJS("slideShow"); ?>

    <?php linkJS("courseDetails"); ?>

    <?php linkJS("dashboard_boost"); ?>

    <?php linkJS("dashboard_boost_modaltwo"); ?>

    <?php linkJS("adminDashboardCourseDisplay"); ?>

    <?php linkJS("adminDashboardModal"); ?>
</body>

</html>