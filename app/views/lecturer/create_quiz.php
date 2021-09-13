<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes">

    <!-- Shortcut Icon -->
    <link rel="shortcut icon" href="/public/img/logo1.png">
    <title>Create Quiz</title>

    <!-- <link rel="stylesheet" href="/public/css/create_quiz.css"> -->
    <!-- <script src="/public/js/create_quiz.js"></script> -->

    <!-- <link rel="stylesheet" href="/public/css/1_main.css">
    <link rel="stylesheet" href="/public/css/2_navigation_bar.css">
    <link rel="stylesheet" href="/public/css/3_notification.css">
    <link rel="stylesheet" href="/public/css/4_footer.css">
    <link rel="stylesheet" href="/public/css/home.css"> -->

    <?php linkCSS("1_main") ?>
    <?php linkCSS("2_navigation_bar") ?>
    <?php linkCSS("3_notification") ?>
    <?php linkCSS("4_footer") ?>
    <?php linkCSS("home") ?>
    <?php linkCSS("create_quiz") ?>

    <?php linkJS("create_quiz") ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <div class="form-content">
        <header>
            <h1>Create Quiz</h1>
        </header>
        <form class="details" method="post">
            <label for="quiz-name">Quiz name : </label>
            <input type="text" class="text" placeholder="Enter quiz name" name="quiz-name"><br>
            <label for="quiz-dur">Quiz duration : </label>
            <input type="number" class="time" name="quiz-dur" min="0" max="60"> hrs
            <input type="number" class="time" name="quiz-dur" min="0" max="60"> mins
            <input type="number" class="time" name="quiz-dur" min="0" max="60"> secs
        </form>

        <!--    First default question-->
        <div id="form">
            <div class="form-header">
                <h4 id="qname">Question 01</h4>
                <div class="radio-inline">
                    <input type="radio" name="select-one" value="MCQ" onchange="return onMcq()" checked>
                    <label for="MCQ">MCQ</label>
                    <input type="radio" name="select-one" value="SHORT" onchange="return onMcq()">
                    <label for="SHORT">Short Answer</label>
                </div>
            </div>
            <form class="question-content " id="mcq" method="post">
                <input type="text" class="form-question" name="que" placeholder="Enter your question here">

                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-2">
                    <input type="number" class="points" name="point-quantity-2" min="-100" max="100">points
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-2">
                    <input type="number" class="points" name="point-quantity-2" min="-100" max="100">points
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-2">
                    <input type="number" class="points" name="point-quantity-2" min="-100" max="100">points
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-2">
                    <input type="number" class="points" name="point-quantity-2" min="-100" max="100">points
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-2">
                    <input type="number" class="points" name="point-quantity-2" min="-100" max="100">points
                </div>

            </form>

            <form class="question-content " id="short-ans" method="post">
                <input type="text" class="form-question" placeholder="Enter your question here">
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter answer here">
                    <input type="number" class="points" min="-100" max="100">points
                </div>
            </form>
        </div>

        <!--    Questions that get newly added-->
        <div id="form1">
            <div class="form-header">
                <h4 id="qname1"></h4>
                <div class="radio-inline">
                    <input type="radio" name="select-one2" value="MCQ" id="select-mcq2" onchange="onMcq1()" checked>
                    <label for="MCQ">MCQ</label>
                    <input type="radio" name="select-one2" value="SHORT" id="select-short2" onchange="onMcq1()">
                    <label for="SHORT">Short Answer</label>
                </div>
            </div>
            <form class="question-content " id="mcq2" method="post">
                <input type="text" class="form-question" placeholder="Enter your question here">
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-1">
                    <input type="number" class="points" name="point-quantity-1" min="-100" max="100">points
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-2">
                    <input type="number" class="points" name="point-quantity-2" min="-100" max="100">points
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-3">
                    <input type="number" class="points" name="point-quantity-3" min="-100" max="100">points
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-4">
                    <input type="number" class="points" name="point-quantity-4" min="-100" max="100">points
                </div>
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter your answer here" name="answer-5">
                    <input type="number" class="points" name="point-quantity-5" min="-100" max="100">points
                </div>

            </form>
            <!---->
            <form class="question-content " id="short-ans2" method="post">
                <input type="text" class="form-question" placeholder="Enter your question here">
                <div class="answer">
                    <input type="text" class="form-answer" placeholder="Enter answer here">
                    <input type="number" class="points" name="quantity" min="-100" max="100">points
                </div>
            </form>
        </div>

        <div id="new-question"></div>
        <input type="submit" name="submit" class="add" value="+ Add question" onclick="getQuestions()">
        <div class="button-set">
            <input type="submit" class="finish" value="Save as draft">
            <!-- Trigger/Open The Modal -->
            <input type="submit" id="create-quiz" class="finish" value="Create quiz" onclick="getPopup()">
        </div>
    </div>

    <!-- The Modal -->
    <div id="save-details" class="save-details">

        <!-- Modal content -->
        <div class="save-details-content">
            <div class="save-details-header">
                <span class="close">&times;</span>
                <h2> Quiz details</h2>
            </div>
            <div class="save-details-body">
                <p><strong> Course name : </strong> SCS 2201 <br>
                </p>
                <br>
                <p><strong> Topic : </strong> <br>
                    <input type="radio" id="topic1" name="topic" value="topic1">
                    <label for="topic1">String Matching</label><br>
                    <input type="radio" id="topic2" name="topic" value="topic2">
                    <label for="topic2">Linear Programming</label><br>
                    <input type="radio" id="topic3" name="topic" value="topic3">
                    <label for="topic3">Solving Recurrences</label> <br>
                    <input type="radio" id="optional" name="topic" value="Other">
                    <label for="optional">Other</label>
                    <input type="text" class="topic-text" placeholder="Enter topic name" name="optional"><br>
                </p>

                <input type="submit" name="submit" class="done" value="Done" onclick="loadHomepage()">
            </div>
        </div>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("basic") ?>


</body>

</html>