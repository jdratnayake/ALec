<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Preview Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("view_respondents"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>

<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li><a href="#">Open text Poll Question Results</a></li>
    <li>Respondents</li>
</ul>

<div class="details-content">
    <div class="container">
        <div class="heading"></div>

        <div class="content">
            <div class="questions-container">
                <span class="question">
                    What was your dream job as a child?
                </span>
                <span class="question">
                    Answer : <b>DOCTOR</b>
                </span>
                <span class="question">
                    Respondents:
                </span>
                <div class="answer-container">
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                    <div class="row">D.S.SENANAYAKE</div>
                    <div class="row">L.S.SENANAYAKE</div>
                </div>
            </div>
        </div>

        <div class="button-container">
            <!--        Save Session Button-->
            <button type="button" value="Create Session" class="save-btn">Back to results</button>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notificationView"); ?>

</body>

</html>











