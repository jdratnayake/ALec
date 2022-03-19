<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Drafts</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_draft_quizzes"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li>Drafts</li>
    </ul>

    <div class="details-content">
        <div class="header-container">
            <header>Drafts</header>

            <!--        Course selection drop down-->
            <div class="course-selection">
                <label for="course-selection"></label>
                <select name="course-selection" id="course-selection" class="course-dropdown">
                    <option value='0'>--No course selected--</option>

                    <?php

                    while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
                        echo
                        "
                        <option value='{$row['course_id']}'>{$row['course_name']}</option>
                        ";
                    }

                    ?>

                </select>
            </div>

            <!--        Topic selection drop down-->
            <div class="course-selection">
                <label for="topic-selection"></label>
                <select name="topic-selection" id="topic-selection" class="course-dropdown">
                    <option value='0'>--No topic selected--</option>
                </select>
            </div>
        </div>

        <div class="button-container">
            <!--        Add draft Button-->
            <button type="button" value="Add New Quiz" class="add-btn" id="add-quiz-btn" onclick="<?php echo "location.href='" . BASEURL . "/createQuizDashboard/index/" . "'"; ?>">Add New Quiz</button>
        </div>

        <div class="draft-details-container">

            <!-- <div class='drafts'>
                <div class='draft'>
                    <div class='draft-details'>
                        <a href='' class='draft-name'><span>Quiz 1</span>
                        </a>
                    </div>
                    <span class='draft-created-date'>17/03/2022</span>
                </div>
            </div> -->

        </div>

        <?php linkPhp("footer"); ?>

        <?php linkPhp("notificationView"); ?>

        <?php linkJS("lib/jquery-3.6.0.min"); ?>

        <?php linkJS("notification") ?>

        <?php linkJS("quizDraftView") ?>

</body>

</html>