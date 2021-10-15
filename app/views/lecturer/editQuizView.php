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
        <form class="details" action="<?php echo BASEURL . "/editQuiz/submit/{$data['quizId']}" ?>" method="post" id="form">

            <input type="hidden" name="new-question-count" id="new-question-count" value="0">

            <ol class="all-questions">

                <?php

                while ($row = mysqli_fetch_assoc($data["quizQuestionSummary"])) {
                    $questionType = $row["question_type"];

                    if ($questionType == "mcq-s" or $questionType == "mcq-m") {

                        $question = str_replace("'", "&#39;", $row["question"]);
                        $question = str_replace("'", "&#34;", $row["question"]);

                        $checked = "";

                        if ($questionType == "mcq-m") {
                            $checked = "checked";
                        }

                        echo
                        "'
                        <li class='question-container'>

                            <div class='single-choice'>

                                <div class='question'>
                                    <input type='text' name='q_$row[question_no]'
                                    value='" . $question . "'>
                                </div>

                                <div class='button-set'>
                                    <button type='button' class='dlt'>
                                        <i class='fa fa-trash' aria-hidden='true'></i> Delete question
                                    </button>
                                </div>

                                <input type='checkbox' name='check_$row[question_no]' 
                                class='check' value='true' $checked>
                                <label>multiple answers</label><br>
                        <ol>'";

                        for ($i = 1; $i <= $row["count"]; $i++) {
                            $choiceRow = mysqli_fetch_assoc($data["quizQuestionChoices"]);

                            echo
                            "
                                    <li class='answer'>
                                        <input type='text' name='choice_$choiceRow[choice_id]' 
                                        value='$choiceRow[choice_name]'>
                                        <input type='text' name='points_$choiceRow[choice_id]'
                                        value='$choiceRow[points]%' class='points'>
                                        <i class='fa fa-times' aria-hidden='true'></i>
                                    </li>
                            ";
                        }

                        echo "</ol></div></li>";
                    } else if ($questionType == "short ans") {
                        $choiceRow = mysqli_fetch_assoc($data["quizQuestionChoices"]);

                        echo
                        "
                        <li class='question-container'>

                            <div class='short-ans'>

                                <div class='question'>
                                    <input type='text' name='q_$row[question_no]'
                                    value='{$row["question"]}'>
                                </div>

                                <div class='button-set'>
                                    <button type='button' class='dlt'>
                                        <i class='fa fa-trash' aria-hidden='true'></i>Delete question
                                    </button>
                                </div>

                                <ul>
                                    <li class='answer short-input' id='short-answer-box'>
                                        <input type='text' name='choice_$choiceRow[choice_id]'
                                        value='$choiceRow[choice_name]'>
                                        <input type='text' name='points_$choiceRow[choice_id]' value='100%' class='points'>
                                        <i class='fa fa-times' aria-hidden='true'></i>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        ";
                    }
                }

                ?>

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

    <?php linkJS("timePicker") ?>

</body>

</html>