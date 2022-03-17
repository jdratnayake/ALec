<?php
$sessionId = $data["bread"]["sessionDetails"]["session_id"];
$sessionName = $data["bread"]["sessionDetails"]["session_name"];

$errors = $data["errors"];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create Poll</title>

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
    echo "<li><a href='http://localhost/ALec/viewSession/index/$sessionId'>$sessionName</a></li>";
    echo "<li><a href='http://localhost/ALec/createPoll/index/$sessionId'>New Poll Question</a></li>";
    ?>
    <li>Single Choice Poll Question</li>
</ul>

<div class="details-content">
    <div class="container">
        <form action="<?php echo BASEURL . "/createPoll/mcq/$sessionId" ?>" method="POST">
            <div class="heading">
                Multiple Choice Poll Question
            </div>
            <div class="content">


                <input type="hidden" name="question-type" id="question-type"
                       value="<?php echo $data["questionType"] ?>">

                <div class="first-row">
                    <!--            option selection button-->
                    <div class="option-btn">
                        <div class="left" id="option-mcq">MCQ</div>
                        <div class="right" id="option-TF">TRUE/FALSE</div>
                    </div>
                    <div class="time-input">
                        <label for="time-picker">Time:</label>
                        <input type="text" name="quiz-dur" id="time-picker" class="form-control"
                               placeholder="hrs:mins:secs"/>
                        <div class="error time-error"><?php echo $errors["duration"]; ?></div>
                    </div>
                </div>

                <!--            mcq type poll questions-->
                <div class="mcq" id="div-mcq" style="display: none">
                    <label for="question"></label>
                    <textarea class="session question" placeholder="Enter your question here..."
                              name="question" id="question" rows="3"></textarea>
                    <div class="error"><?php echo $errors["question"]; ?></div>

                    <label for="answer-1"></label>
                    <input type="text" class="session" placeholder="Enter your answer here..." name="answer-1"
                           id="answer-1">
                    <div class="error"><?php echo $errors["answer-1"]; ?></div>

                    <label for="answer-2"></label>
                    <input type="text" class="session" placeholder="Enter your answer here..." name="answer-2"
                           id="answer-2">
                    <div class="error"><?php echo $errors["answer-2"]; ?></div>

                    <label for="answer-3"></label>
                    <input type="text" class="session" placeholder="Enter your answer here..." name="answer-3"
                           id="answer-3">
                    <div class="error"><?php echo $errors["answer-3"]; ?></div>

                    <label for="answer-4"></label>
                    <input type="text" class="session" placeholder="Enter your answer here..." name="answer-4"
                           id="answer-4">
                    <div class="error"><?php echo $errors["answer-4"]; ?></div>

                    <label for="answer-5"></label>
                    <input type="text" class="session" placeholder="Enter your answer here..." name="answer-5"
                           id="answer-5">
                    <div class="error"><?php echo $errors["answer-5"]; ?></div>
                </div>

                <!--            true false type poll questions-->
                <div class="tf" id="div-tf" style="display: none">
                    <label for="question"></label>
                    <input type="text" class="session question" placeholder="Enter your question here..."
                           name="tf-question" id="question">
                    <div class="error"><?php echo $errors["tf-question"]; ?></div>

                    <label for="true"></label>
                    <input type="text" class="session" value="True" name="tf-answer-1" readonly id="true">

                    <label for="false"></label>
                    <input type="text" class="session" value="False" name="tf-answer-2" readonly id="false">
                </div>

                <div class="answer" style="width: 100%">
                    <label for="correct-answer"></label>
                    <input type="text" class="session" placeholder="Enter correct answer here..." name="correct-answer"
                           id="correct-answer" style="background-color: rgba(118,151,179,0.3)">
                    <div class="error"></div>
                </div>
            </div>

            <div class="button-container">
                <!--        Save Session Button-->
                <button type="submit" value="Create Session" class="save-btn">Save Question</button>
            </div>
        </form>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

<?php linkJS("createPollMcq"); ?>

<?php linkJS("timePickerQuiz"); ?>

</body>

</html>