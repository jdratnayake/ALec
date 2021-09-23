<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("create_quiz") ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<div class="form-content">
    <!-- Quiz heading -->
    <header>
        <h1>Create Quiz</h1>
    </header>

    <!-- Quiz basic details -->
    <form class="details" method="post" action='<?php echo BASEURL . "/temp/submit"; ?>'>
        <div>
            <!-- select course drop down list -->
            <div class="form-group details">
                <label for="course">Course</label>
                <select name="course" id="course" class="form-control">
                    <option value="def" selected>Select your course</option>
                    <option value="one">SCS 1201 - Data Structures and Algorithms - I</option>
                    <option value="two">SCS 1208 - Data Structures and Algorithms - II</option>
                    <option value="three">SCS 2201 - Data Structures and Algorithms - III</option>
                </select>
            </div>

            <div class="form-group details">
                <!--        select topic drop down list -->
                <label for="topic"> Topic:</label>
                <select name="topic" id="topic" class="form-control">
                    <option value="def" selected>Select your topic</option>
                    <option value="1">Topic - 01</option>
                    <option value="2">Topic - 02</option>
                    <option value="3">Topic - 03</option>
                    <option value="4">Topic - 04</option>
                </select>
            </div>

            <!-- quiz details-->
            <div class="form-group">
                <label for="quiz-name">Quiz name</label>
                <input type="text" class="form-control form-name" placeholder="Enter quiz name" name="quiz-name" id="quiz-name">
            </div>

            <div class="row">
                <div class="form-group col">
                    <label>Quiz Duration</label>
                </div>

                <div class="form-group col">
                    <input type="number" class="form-control" placeholder="hrs" name="quiz-dur-hr" id="quiz-dur-hr" min="0" max="60">
                    <label for="quiz-dur-hr"></label>
                </div>

                <div class="form-group col">
                    <input type="number" class="form-control" placeholder="mins" name="quiz-dur-min" id="quiz-dur-min" min="0" max="60">
                    <label for="quiz-dur-min"></label>
                </div>

                <div class="form-group col col-end">
                    <input type="number" class="form-control" placeholder="secs" name="quiz-dur-sec" id="quiz-dur-sec" min="0" max="60">
                    <label for="quiz-dur-sec"></label>
                </div>
            </div>
        </div>

        <div id="form">
            <!-- This is the JS Created Element Look create_quiz.js -->
        </div>

        <!-- Add Question Button -->
        <input type="button" class="add" id="add-question" value="+ Add Question"/>

        <div class="button-set">
            <input type="submit" id="create-quiz" class="finish" value="Submit">
        </div>
    </form>
</div>

<?php linkPhp("notification"); ?>

<?php linkPhp("footer"); ?>

<?php linkJS("create_quiz"); ?>

</body>

</html>