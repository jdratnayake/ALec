<?php
$sessionId = $data["bread"]["sessionDetails"]["session_id"];
$sessionName = $data["bread"]["sessionDetails"]["session_name"];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Edit Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("create_poll_mcq"); ?>
    <?php linkCSS("time_picker") ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <?php
        echo "<li><a href='http://localhost/ALec/viewSession/index/{$sessionId}'>{$sessionName}</a></li>";
        ?>
        <li>Edit Poll Question</a></li>
    </ul>

    <div class="details-content">
        <div class="container">
            <form action="#" method="POST">
                <div class="heading">
                    Edit Poll Question
                </div>
                <div class="content">

                    <!-- Question id and type -->
                    <input type="hidden" name="question-id" id="question-id" value="<?php echo $data["questionDetails"]["question_no"]; ?>">
                    <input type="hidden" name="question-type" id="question-type" value="<?php echo $data["questionDetails"]["question_type"]; ?>">

                    <!-- Duration -->
                    <div class="first-row" style="justify-content: flex-end;">
                        <div class="time-input">
                            <label for="time-picker">Time:</label>
                            <input type="text" name="quiz-dur" id="time-picker" class="form-control" value="<?php echo $data["questionDetails"]["duration"] ?>" />
                            <div class="error time-error"></div>
                        </div>
                    </div>

                    <!-- Question Content -->
                    <div class="mcq" id="div-mcq">

                        <!-- Question -->
                        <label for="question"></label>
                        <textarea class="session question" name="question" id="question" rows="3"><?php echo $data["questionDetails"]["question"]; ?></textarea>
                        <div class="error"></div>

                        <!-- Delete Question  -->
                        <div class='button-set'>
                            <button type='button' class='dlt' onclick=''>
                                <i class='fa fa-trash' aria-hidden='true'></i>Delete Question
                            </button>
                        </div>

                        <!-- Answers - Begin -->
                        <?php

                        while ($row = mysqli_fetch_assoc($data["answerDetails"])) {
                            echo
                            "
                            <div class='session'>
                            <label for='answer-2'></label>
                            <input type='text' value='{$row["choice_name"]}' name='answer-2' id='answer-2'>
                            <i class='fa fa-times' aria-hidden='true'></i>
                            </div>
                            ";
                        }

                        ?>
                        <!-- Answers - End -->


                        <!-- <div class='session'>
                            <label for='answer-2'></label>
                            <input type='text' value='Union' name='answer-2' id='answer-2'>
                            <i class='fa fa-times' aria-hidden='true'></i>
                        </div> -->

                    </div>
                </div>

                <div class="button-container">
                    <!--        Save Session Button-->
                    <button type="submit" value="Create Session" class="save-btn">Save Poll</button>
                </div>
            </form>
        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("timePickerQuiz"); ?>

    <?php linkJS("editPollMcq") ?>

</body>

</html>