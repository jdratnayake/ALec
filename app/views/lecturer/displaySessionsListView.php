<?php
$errors = $data["errors"];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sessions</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_sessions"); ?>

    <?php linkCSS("modal_styles"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li>Sessions</li>
    </ul>

    <div class="details-content">
        <div class="header-container">
            <header>Sessions</header>
        </div>
        <div class="button-container">
            <!--    Search bar     -->
            <form method="POST" class="search-bar" id="session-search">
                <label for="search-tag"></label>

                <input type="text" placeholder="Search.. &#xF002;" name="search-tag" id="search-tag" style="font-family: FontAwesome, Poppins,sans-serif; font-style: normal; font-size: 15px">
            </form>
            <!--        Add Session Button-->
            <button type="button" value="Add New Session" class="add-btn" id="add-session-btn">Add New Session</button>
        </div>

        <div class="session-details-container">
            <!--    Division of Active sessions-->
            <div class="sessions" ">
        <span class=" session-label">Active</span>

                <div id="active-sessions">

                    <?php
                    while ($row = mysqli_fetch_assoc($data["activeSessions"])) {
                        echo
                        "
                        <div class='session'>
                            <div class='session-details'>
                                <a href='http://localhost/ALec/viewSession/index/{$row['session_id']}' class='session-name'>
                                    <span>
                                        {$row['session_name']}
                                    </span>
                                </a>
                                <span class='eye'>
                                    <input type='hidden' class='course-identity' value='{$row['course_id']}'>
                                    <input type='hidden' value='{$row['session_id']}'>
                                    <i class='fa fa-eye publish-status' aria-hidden='true'></i>
                                    <i class='fa fa-eye-slash publish-status' aria-hidden='true' style='display: none'></i>
                                </span>
                            </div>
                            <span class='session-course'>{$row['course_name']}</span>
                            <span class='session-created-date' style='text-decoration: none; font-size: 10px'>
                                {$row['date']}
                            </span>
                        </div>
                        ";
                    }
                    ?>

                </div>

            </div>

            <!--    Division of other sessions-->
            <div class="sessions">
                <span class="session-label">Recent</span>

                <div id="inactive-sessions">
                    <?php
                    while ($row = mysqli_fetch_assoc($data["inActiveSessions"])) {
                        echo
                        "
                        <div class='session'>
                        <div class='session-details'>
                            <a href='http://localhost/ALec/viewSession/index/{$row['session_id']}' class='session-name'>
                                <span>
                                    {$row['session_name']}
                                </span>
                            </a>
                            <span>
                                <input type='hidden' class='course-identity' value='{$row['course_id']}'>
                                <input type='hidden' value='{$row['session_id']}'>
                                <i class='fa fa-eye publish-status' aria-hidden='true' style='display: none'></i>
                                <i class='fa fa-eye-slash publish-status' aria-hidden='true'></i>
                            </span>
                        </div>
                        <span class='session-course'>{$row['course_name']}</span>
                            <span class='session-created-date' style='text-decoration: none; font-size: 10px'>
                                {$row['date']}
                            </span>    
                        </div>
                        ";
                    }
                    ?>
                </div>


            </div>
        </div>

        <!-- Add Session Modal -->
        <div id="add-session-modal" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <span id="close" class="close">&times;</span>
                    <h2>New Session</h2>
                </div>

                <form action="<?php echo BASEURL . "/displaySessionsList/index" ?>" method="POST">
                    <div class="session-details">
                        <div class="session-name-container">
                            <label for="course-id" class="session-label">Course Name</label>
                            <div class="right-side">
                                <select class="input" name="course-id" id="course-id">
                                    <option value="null">No course selected</option>
                                    <?php

                                    while ($row = mysqli_fetch_assoc($data["selectedCourses"])) {
                                        echo
                                        "
                                <option value='{$row['course_id']}'>{$row['course_name']}</option>
                                ";
                                    }

                                    ?>
                                    <!-- <option value='course-1'>Data Structures and Algorithms - I</option> -->
                                </select>
                                <div class="error"><?php echo $errors['courseId']; ?></div>
                            </div>
                        </div>
                        <div class="session-name-container">
                            <label for="session-name" class="session-label">Session Name</label>
                            <div class="right-side">
                                <input class="input" type="text" name="session-name" id="session-name" placeholder="Enter your session name here... &#xF040;">
                                <div class=" error"><?php echo $errors['sessionName']; ?></div>
                            </div>
                        </div>
                    </div>

                    <div class=" modal-button-container">
                        <!--        Save Session Button-->
                        <button type="submit" value="Create Session" class="create-btn">Create Session</button>
                    </div>
                </form>
            </div>
        </div>


        <?php linkPhp("footer"); ?>

        <?php linkPhp("notificationView"); ?>

        <?php linkJS("lib/jquery-3.6.0.min"); ?>

        <?php linkJS("notification") ?>

        <?php linkJS("displaySessions"); ?>

        <?php linkJS("addSessionModal"); ?>

        <?php linkJS("displaySessionsListSearch"); ?>

</body>

</html>