<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("create_quiz") ?>
    <?php linkCSS("time_picker") ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li>Create quiz</li>
    </ul>

    <div class="form-content">
        <!-- Quiz heading -->
        <header>Create Quiz</header>

        <!-- Quiz basic details -->
        <form class="details" method="post" action='<?php echo BASEURL . "/createQuizDashboard/index"; ?>'>
            <div>
                <!-- select course drop down list -->
                <div class="form-group details">
                    <label for="course">Course</label>
                    <select name="course" id="course" class="form-control">
                        <option value="null" selected>Select your course</option>
                        <?php
                        while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
                            echo '<option value="' . $row["course_id"] . '">' . $row["course_name"] . '</option>';
                        }
                        ?>
                    </select>

                    <div class="error"></div>
                </div>

                <div class="form-group details">
                    <!--        select topic drop down list -->
                    <label for="topic"> Topic:</label>
                    <select name="topic" id="topic" class="form-control">
                        <option value="null" selected>Select your topic</option>
                    </select>

                    <div class="error"></div>
                </div>

                <!-- quiz details-->
                <div class="form-group">
                    <label for="quiz-name">Quiz name</label>
                    <input type="text" class="form-control form-name cursor-change" placeholder="Enter quiz name" name="quiz-name" id="quiz-name">

                    <div class="error"></div>
                </div>

                <div class="row">
                    <div class="form-group col">
                        <label for="time-picker">Quiz Duration</label>
                        <input type="text" name="quiz-dur" id="time-picker" class="form-control" placeholder="hrs:mins:secs" />

                        <div class="error"></div>
                    </div>
                </div>
            </div>

            <div id="form">
                <!-- This is the JS Created Element Look create_quiz.js -->
            </div>

            <!-- Add Question Button -->
            <input type="button" class="add" id="add-question" value="+ Add Question" />

            <div class="button-set">
                <input type="submit" id="create-quiz" class="finish" value="Create Quiz">
            </div>
        </form>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>


    <?php linkJS("lib/jquery-3.6.0.min"); ?>
    <?php linkJS("create_quiz"); ?>
    <?php linkJS("createQuizTopic"); ?>
    <?php linkJS("timePickerQuiz"); ?>
    <?php linkJS("createQuizValidation"); ?>

</body>

</html>