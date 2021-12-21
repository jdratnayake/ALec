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
    <li><a href=''>$sessionName</a></li>
    <li><a href='#'>Edit Poll Question</a></li>
</ul>

<div class="details-content">
    <form action="" method="POST">
        <div class="container">
            <div class="heading">
                Open Text Poll Question
            </div>
            <div class="content">
                <div class="first-row">
                    <div class="time-input">
                        <label for="time-picker">Time:</label>
                        <input type="text" name="quiz-dur" id="time-picker" class="form-control" value="00:00:10"/>
                        <div class="error"></div>
                    </div>
                </div>
                <div class="div-question">
                    <div class="session">
                        <!--            open text poll question-->
                        <label for="question"></label>
                        <input type="text" value="Do you prefer coffee? Tea?" name="question" id="question">
                    </div>
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
