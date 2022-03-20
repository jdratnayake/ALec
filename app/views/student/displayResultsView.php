<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>ALec</title>

    <?php linkCSS("attempt_quiz") ?>

</head>

<body>
<?php linkPhp("navigationBarStudent"); ?>

<div class="form-content">
    <!-- Quiz heading -->
    <header>Quiz 1</header>

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

<?php linkPhp("notificationView"); ?>

<?php linkPhp("footer"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

<?php linkJS("attemptQuiz"); ?>

</body>

</html>
