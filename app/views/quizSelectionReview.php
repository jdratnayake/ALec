<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("quiz_selection"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li>Quizzes</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>Quizzes</header>
    </div>

    <div class="button-container">
        <!--        Course selection drop down-->
        <div class="course-selection">
            <label for="course-selection"></label>
            <select name="course-selection" id="course-selection" class="course-dropdown">
                <option value='0'>-All courses--</option>
                <option value='1'>Data Structures and Algorithms - I</option>
                <option value='2'>Data Structures and Algorithms - II</option>
            </select>
        </div>
    </div>

    <div class="quiz-details-container">
        <div class="quizzes">
            <div class='quiz'>
                <div class='quiz-details'>
                    <a href='' class='quiz-name'><span>Quiz 1</span></a>
                </div>
                <div class="quiz-course">Data Structures and Algorithms - I</div>
                <span class='quiz-created-date' style='text-decoration: none; font-size: 10px'>January 01 2022</span>
            </div>

            <div class='quiz'>
                <div class='quiz-details'>
                    <a href='' class='quiz-name'><span>Quiz 2</span></a>
                </div>
                <div class="quiz-course">Data Structures and Algorithms - II</div>
                <span class='quiz-created-date' style='text-decoration: none; font-size: 10px'>January 01 2022</span>
            </div>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

</body>

</html>
