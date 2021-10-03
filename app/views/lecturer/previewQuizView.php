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

    <!-- Edit , delete buttons-->
    <button type="button" class="dlt"><i class="fa fa-trash" aria-hidden="true"></i>Delete quiz</button>
    <button type="button" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i>Edit quiz</button>

    <div class="quiz-name">
        <h2>Assignment 01</h2>
    </div>

    <!-- Quiz questions and answers container -->
    <div class="details">
        <ol class="all-questions">
            <li class="question-container">
                <div class="question">
                    Which of the following is not an operating system?
                </div>
                <ol>
                    <li class="answer">
                        Windows
                        <div class="points">0%</div>
                    </li>
                    <li class="answer">
                        Linux
                        <div class="points">0%</div>
                    </li>
                    <li class="answer">
                        Oracle
                        <div class="points">100%</div>
                    </li>
                    <li class="answer">
                        DOS
                        <div class="points">0%</div>
                    </li>
                </ol>
            </li>
            <li class="question-container">
                <div class="question">
                    What is the maximum length of the filename in DOS?
                </div>
                <ol>
                    <li class="answer">
                        4
                        <div class="points">0%</div>
                    </li>
                    <li class="answer">
                        5
                        <div class="points">0%</div>
                    </li>
                    <li class="answer">
                        8
                        <div class="points">100%</div>
                    </li>
                    <li class="answer">
                        12
                        <div class="points">0%</div>
                    </li>
                </ol>
            </li>
        </ol>

        <button type="submit" class="done">Done</button>

    </div>
</div>

<?php linkPhp("notification"); ?>

<?php linkPhp("footer"); ?>

</body>

</html>
