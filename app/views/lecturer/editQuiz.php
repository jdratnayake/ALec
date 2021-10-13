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
        <span>
            <label for="duration">Duration</label>
            <input id="duration" type="text" value="01 hrs :00 mins: 00 secs">
        </span>
    </div>

    <!-- Quiz basic details -->
    <form class="details" method="post" id="form">
        <ol class="all-questions">
            <li class="question-container">
                <div class="single-choice">
                    <div class="question">
                        Which of the following is not an operating system?
                    </div>
                    <div class="button-set">
                        <button type="button" class="dlt"><i class="fa fa-trash" aria-hidden="true"></i>Delete question</button>
                    </div>
                    <ol>
                        <li class="answer">
                            <input type="text" value="Windows">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </li>
                        <li class="answer">
                            <input type="text" value="Linux">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </li>
                        <li class="answer">
                            <input type="text" value="Oracle">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </li>
                        <li class="answer">
                            <input type="text" value="DOS">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </li>
                    </ol>
                </div>
            </li>
            <li class="question-container">
                <div class="short-ans">
                    <div class="question">When was the first operating system developed?</div>
                    <div class="button-set">
                        <button type="button" class="dlt"><i class="fa fa-trash" aria-hidden="true"></i>Delete question</button>
                    </div>
                    <input class="answer short-input"  type="text" id="short-answer-box" value="1950">
                </div>
            </li>
            <li class="question-container">
                <div class="multiple-choice">
                    <div class="question">
                        Which of the following are not an operating systems?
                    </div>
                    <div class="button-set">
                        <button type="button" class="dlt"><i class="fa fa-trash" aria-hidden="true"></i>Delete question</button>
                    </div>
                    <ol>
                        <li class="answer">
                            <input type="text" value="Windows">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </li>
                        <li class="answer">
                            <input type="text" value="Linux">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </li>
                        <li class="answer">
                            <input type="text" value="Oracle">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </li>
                        <li class="answer">
                            <input type="text" value="DOS">
                            <i class="fa fa-times" aria-hidden="true"></i>
                        </li>
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


</body>

</html>

