<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>drafts</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_draft_quizzes"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li>Drafts</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>Drafts</header>

<!--        Course selection drop down-->
        <div class="course-selection">
            <label for="course-selection"></label>
            <select name="course-selection" id="course-selection" class="course-dropdown">
                <option value='course-0'>--No course selected--</option>
                <option value='course-1'>SCS 1201 - DATA STRUCTURES AND ALGORITHMS - I</option>
                <option value='course-2'>SCS 1201 - DATA STRUCTURES AND ALGORITHMS - II</option>
                <option value='course-3'>SCS 1201 - DATA STRUCTURES AND ALGORITHMS - III</option>
            </select>
        </div>

<!--        Topic selection drop down-->
        <div class="course-selection">
            <label for="topic-selection"></label>
            <select name="topic-selection" id="topic-selection" class="course-dropdown">
                <option value='topic-0'>--No course selected--</option>
                <option value='topic-1'>TOPIC - I</option>
                <option value='topic-2'>TOPIC - II</option>
                <option value='topic-3'>TOPIC - III</option>
            </select>
        </div>
    </div>

    <div class="button-container">
        <!--        Add draft Button-->
        <button type="button" value="Add New Quiz" class="add-btn" id="add-quiz-btn">Add New Quiz</button>
    </div>

    <div class="draft-details-container">
        <div class="drafts">
                <div class='draft'>
                    <div class='draft-details'>
                        <a href="" class='draft-name'><span>Quiz 1</span>
                        </a>
                    </div>
                    <span class='draft-created-date'>17/03/2022</span>
                </div>
        </div>

        <div class="drafts">
                <div class='draft'>
                    <div class='draft-details'>
                        <a href='' class='draft-name'><span>Quiz 2</span></a>
                    </div>
                    <span class='draft-created-date'>12/01/2022</span>
                </div>
        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>
