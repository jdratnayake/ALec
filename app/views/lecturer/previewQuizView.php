<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("preview_quiz") ?>

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
        </div>

        <!-- Quiz basic details -->
        <div class="details">
            <ol class="all-questions">
                <li class="question-container">
                    <div class="question">
                        Which of the following is not an operating system?
                    </div>
                    <ol>
                        <li class="answer">Windows</li>
                        <li class="answer">Linux</li>
                        <li class="answer">Oracle</li>
                        <li class="answer">DOS</li>
                    </ol>
                    <div class="correct-answer"><strong>Answer: </strong>c.) Oracle</div>
                </li>
                <li class="question-container">
                    <div class="question">
                        What is the maximum length of the filename in DOS?
                    </div>
                    <ol>
                        <li class="answer">4</li>
                        <li class="answer">5</li>
                        <li class="answer">8</li>
                        <li class="answer">12</li>
                    </ol>
                    <div class="correct-answer"><strong>Answer: </strong>c.) 8</div>
                </li>
            </ol>

            <div class="button-set">
                <button type="submit" class="finish">Done</button>
            </div>
        </div>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

</body>

</html>