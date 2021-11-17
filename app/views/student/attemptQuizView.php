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
    <?php linkPhp("navigationBarLecturer"); ?>

    <div class="form-content">
        <!-- Quiz heading -->
        <header>
            <h2><?php echo $data["quizDetails"]["course_name"]; ?></h2>
        </header>

        <div class="quiz-name">
            <h2><?php echo $data["quizDetails"]["quiz_name"]; ?></h2>
            <span>Duration 01:00:00</span>
        </div>

        <!-- Quiz basic details -->
        <form class="details" method="post" id="form">
            <ol class="all-questions">
                <li class="question-container">
                    <div class="single-choice">
                        <div class="q1 question">
                            Which of the following is not an operating system?
                        </div>
                        <ol>
                            <div class="answer">
                                <input type="radio" id="scq-answer-1" name="q1" value="ans-1">
                                <label for="scq-answer-1">
                                    <li>Windows</li>
                                </label>
                            </div>
                            <div class="answer">
                                <input type="radio" id="scq-answer-2" name="q1" value="ans-2">
                                <label for="scq-answer-2">
                                    <li>Linux</li>
                                </label>
                            </div>
                            <div class="answer">
                                <input type="radio" id="scq-answer-3" name="q1" value="ans-3">
                                <label for="scq-answer-3">
                                    <li>Oracle</li>
                                </label>
                            </div>
                            <div class="answer">
                                <input type="radio" id="scq-answer-4" name="q1" value="ans-4">
                                <label for="scq-answer-4">
                                    <li>DOS</li>
                                </label>
                            </div>
                        </ol>
                    </div>
                </li>
                <li class="question-container">
                    <div class="q2 multiple-choice">
                        <div class="question">
                            Which of the following are operating systems?
                        </div>
                        <ol>
                            <div class="answer">
                                <input type="checkbox" id="mcq-answer-1" name="q2" value="ans-1">
                                <label for="mcq-answer-1">
                                    <li>Windows</li>
                                </label>
                            </div>
                            <div class="answer">
                                <input type="checkbox" id="mcq-answer-2" name="q2" value="ans-2">
                                <label for="mcq-answer-2">
                                    <li>Linux</li>
                                </label>
                            </div>
                            <div class="answer">
                                <input type="checkbox" id="mcq-answer-3" name="q2" value="ans-3">
                                <label for="mcq-answer-3">
                                    <li>Oracle</li>
                                </label>
                            </div>
                            <div class="answer">
                                <input type="checkbox" id="mcq-answer-4" name="q2" value="ans-4">
                                <label for="mcq-answer-4">
                                    <li>DOS</li>
                                </label>
                            </div>

                            <!--                        <li class="answer">Linux</li>-->
                            <!--                        <li class="answer">Oracle</li>-->
                            <!--                        <li class="answer">DOS</li>-->
                        </ol>
                    </div>
                </li>
                <li class="question-container">
                    <div class="q3 short-ans">
                        <label for="short-answer-box" class="question">When was the first operating system developed?</label>
                        <input type="text" id="short-answer-box">
                    </div>
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

    <?php //linkJS("attemptQuiz"); 
    ?>

</body>

</html>