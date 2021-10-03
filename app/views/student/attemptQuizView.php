<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("attempt_quiz") ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<div class="form-content">
    <!-- Quiz heading -->
    <header>
        <h2>SCS 1205 - Operating Systems</h2>
    </header>

    <div class="quiz-name">
        <h2>Assignment 01</h2>
        <span>Duration 01:00:00</span>
    </div>

    <!-- Quiz basic details -->
    <form class="details" method="post" id="form">
        <ol class="all-questions">
            <li class="question-container">
<!--                <div class="choice-que-1">-->
<!--                    <div class="question">-->
<!--                        Which of the following is not an operating system?-->
<!--                    </div>-->
<!--                    <ol>-->
<!--                        <li class="answer">Windows</li>-->
<!--                        <li class="answer">Linux</li>-->
<!--                        <li class="answer">Oracle</li>-->
<!--                        <li class="answer">DOS</li>-->
<!--                    </ol>-->
<!--                </div>-->
                <div class="short-ans-1">
                    <label for="short-1">When was the first operating system developed?</label>
                    <input type="text" id="short-1">
                </div>
            </li>
            <li class="question-container">
                <div class="choice-que-2">
                    <div class="question">
                        Which of the following is not an operating system?
                    </div>
                    <ol>
                        <li class="answer">Windows</li>
                        <li class="answer">Linux</li>
                        <li class="answer">Oracle</li>
                        <li class="answer">DOS</li>
                    </ol>
                </div>
<!--                <div class="short-ans-2">-->
<!--                    <label for="short-2">When was the first operating system developed?</label>-->
<!--                    <input type="text" id="short-2">-->
<!--                </div>-->
            </li>
        </ol>

        <button type="submit" class="done" id="submit-btn">Submit</button>

    </form>

    <!--quizCompletedResult-->
    <div class="quizCompleted has-text-centered" id="result">

        <!-- quizCompletedIcon: Achievement Icon -->
        <span class="icon">
<!--                <i class="fa" :class="score()>3?'fa-check-circle-o is-active':'fa-times-circle'"></i>-->
            <!--      if(score<4): <i class="fa fa-times-circle is-active"></i>-->
            <!--            else-->
            <i class="fa fa-check-circle-o is-active"></i>
        </span>

        <!--resultTitleBlock-->
        <h2 class="title">
            You did a good job!
            <!--            You did {{ (score()>7?'an amazing':(score()<4?'a poor':'a good')) }} job!-->
        </h2>
        <p class="subtitle">
            Total score: 6/10
            <!--            Total score: {{ score() }} / {{ quiz.questions.length }}-->
        </p>
        <br>
        <!--/resultTitleBlock-->

    </div>
    <!--/quizCompetedResult-->

</div>

<?php linkPhp("notification"); ?>

<?php linkPhp("footer"); ?>

<?php linkJS("attemptQuiz"); ?>

</body>

</html>
