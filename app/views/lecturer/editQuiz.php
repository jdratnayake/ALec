<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("edit_quiz") ?>

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
                <div class="single-choice">
                    <div class="question editable">
                        Which of the following is not an operating system?
                    </div>
                    <div class="button-set">
                        <button type="button" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i>Edit question</button>
                        <button type="button" class="dlt"><i class="fa fa-trash" aria-hidden="true"></i>Delete question</button>
                    </div>
                    <ol>
                        <li class="answer editable">Windows<i class="fa fa-times" aria-hidden="true"></i></li>
                        <li class="answer editable">Linux<i class="fa fa-times" aria-hidden="true"></i></li>
                        <li class="answer editable">Oracle<i class="fa fa-times" aria-hidden="true"></i></li>
                        <li class="answer editable">DOS<i class="fa fa-times" aria-hidden="true"></i></li>
                        <li class="answer editable">MAC<i class="fa fa-times" aria-hidden="true"></i></li>
                    </ol>
                </div>
            </li>
            <li class="question-container">
                <div class="short-ans">
                    <div class="question editable">When was the first operating system developed?</div>
                    <div class="button-set">
                        <button type="button" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i>Edit question</button>
                        <button type="button" class="dlt"><i class="fa fa-trash" aria-hidden="true"></i>Delete question</button>
                    </div>
                    <div class="answer short-input" id="short-answer-box">1950</div>
<!--                    <input type="text" id="short-answer-box" value="1950">-->
                </div>
            </li>
            <li class="question-container">
                <div class="multiple-choice">
                    <div class="question editable">
                        Which of the following are not an operating systems?
                    </div>
                    <div class="button-set">
                        <button type="button" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i>Edit question</button>
                        <button type="button" class="dlt"><i class="fa fa-trash" aria-hidden="true"></i>Delete question</button>
                    </div>
                    <ol>
                        <li class="answer editable">Windows<i class="fa fa-times" aria-hidden="true"></i></li>
                        <li class="answer editable">Linux<i class="fa fa-times" aria-hidden="true"></i></li>
                        <li class="answer editable">Oracle<i class="fa fa-times" aria-hidden="true"></i></li>
                        <li class="answer editable">DOS<i class="fa fa-times" aria-hidden="true"></i></li>
                    </ol>
                </div>
            </li>
        </ol>

        <div class="end-button-set">
            <button type="button" class="done">Add question</button>
            <button type="submit" class="done" id="submit-btn">Save changes</button>
        </div>

    </form>
</div>

<?php linkPhp("notification"); ?>

<?php linkPhp("footer"); ?>

<?php linkJS("editQuiz"); ?>

</body>

</html>

