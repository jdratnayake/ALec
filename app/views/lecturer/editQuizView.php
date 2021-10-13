<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("edit_quiz") ?>
    <?php linkCSS("time_picker") ?>

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
                <label for="time-picker">Quiz Duration</label>
                <input type="text" id="time-picker" class="form-control" placeholder="hrs:mins:secs" />
            </span>
        </div>

        <!-- Quiz basic details -->
        <form class="details" method="post" id="form">
            <input type="hidden" id="question-count" value="">

            <ol class="all-questions">

                <!-- Question 1 -->
                <li class="question-container">

                    <!-- Question type -->
                    <input type="hidden" id="question-type" value="mcq">

                    <div class="single-choice">

                        <!-- Question -->
                        <div class="question">
                            <input type="text" value="Which of the following is not an operating system?">
                        </div>

                        <!-- Delete Button -->
                        <div class="button-set">
                            <button type="button" class="dlt">
                                <i class="fa fa-trash" aria-hidden="true"></i> Delete question
                            </button>
                        </div>

                        <!-- Multiple answer check -->
                        <input type="checkbox" class="check" value="true">
                        <label>multiple answers</label><br>

                        <!-- Answer list -->
                        <ol>
                            <li class="answer">
                                <input type="text" value="Windows">
                                <input type="text" value="0%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                            <li class="answer">
                                <input type="text" value="Linux">
                                <input type="text" value="0%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                            <li class="answer">
                                <input type="text" value="Oracle">
                                <input type="text" value="0%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                            <li class="answer">
                                <input type="text" value="DOS">
                                <input type="text" value="0%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                            <li class="answer">
                                <input type="text" value="">
                                <input type="text" value="0%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                        </ol>
                    </div>
                </li>

                <li class="question-container">

                    <!-- Question type -->
                    <input type="hidden" id="question-type" value="short">

                    <div class="short-ans">

                        <div class="question">
                            <input type="text" value="When was the first operating system developed?">
                        </div>

                        <div class="button-set">
                            <button type="button" class="dlt">
                                <i class="fa fa-trash" aria-hidden="true"></i>Delete question
                            </button>
                        </div>

                        <ul>
                            <li class="answer short-input" id="short-answer-box">
                                <input type="text" value="1950">
                                <input type="text" value="100%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="question-container">

                    <!-- Question type -->
                    <input type="hidden" id="question-type" value="short">

                    <div class="multiple-choice">

                        <div class="question">
                            <input type="text" value="Which of the following are operating systems?">
                        </div>

                        <div class="button-set">
                            <button type="button" class="dlt">
                                <i class="fa fa-trash" aria-hidden="true"></i>Delete question
                            </button>
                        </div>


                        <input type="checkbox" class="check" value="true">
                        <label>multiple answers</label><br>

                        <ol>
                            <li class="answer">
                                <input type="text" value="Windows">
                                <input type="text" value="100%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                            <li class="answer">
                                <input type="text" value="Linux">
                                <input type="text" value="100%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                            <li class="answer">
                                <input type="text" value="Oracle">
                                <input type="text" value="100%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                            <li class="answer">
                                <input type="text" value="DOS">
                                <input type="text" value="0%" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                            <li class="answer">
                                <input type="text" value="">
                                <input type="text" value="" class="points">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </li>
                        </ol>
                    </div>
                </li>
            </ol>

            <!-- Add Question Button -->
            <input type="button" class="add" id="add-question" value="+ Add Question" />

            <div class="end-button-set">
                <!--            <button type="button" class="done">Add question</button>-->
                <button type="submit" class="done" id="submit-btn">Save changes</button>
            </div>

        </form>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("timePicker"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("editQuiz"); ?>

</body>

</html>