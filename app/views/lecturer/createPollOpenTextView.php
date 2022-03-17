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
    <?php linkCSS("create_poll_openText"); ?>
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
    echo "<li><a href='http://localhost/ALec/createPoll/index/{$sessionId}'>New Poll Question</a></li>";
    ?>
    <li>Open Text Poll Question</li>
</ul>

<div class="details-content">
    <form action="<?php echo BASEURL . "/createPoll/openText/{$sessionId}" ?>" method="POST">
        <div class="container">
            <div class="heading">
                Open Text Poll Question
            </div>
            <div class="content">
                <div class="first-row">
                    <div class="time-input">
                        <label for="time-picker">Time:</label>
                        <input type="text" name="quiz-dur" id="time-picker" class="form-control"
                               placeholder="hrs:mins:secs"/>
                        <div class="error"><?php echo $errors["duration"]; ?></div>
                    </div>
                </div>
                <div class="div-question">
                    <!--            open text poll question-->
                    <label for="question"></label>
                    <input type="text" class="session" placeholder="Enter your question here..." name="question">
                    <div class="error"><?php echo $errors["question"]; ?></div>
                </div>
                <div class="div-question">
                    <!--            open text poll answer-->
                    <label for="answer"></label>
                    <input type="text" class="session" placeholder="Enter correct answer here..." name="answer"
                           style="background-color: rgba(118,151,179,0.3)">
                    <div class="error"></div>
                </div>
            </div>

            <div class="button-container">
                <!--        Save Session Button-->
                <button type="submit" value="Create Session" class="save-btn">Save Question</button>
            </div>
        </div>
    </form>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

<?php linkJS("timePickerQuiz"); ?>

</body>

</html>