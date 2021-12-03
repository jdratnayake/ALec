<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("create_poll_mcq"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li><a href="#">New Poll Question</a></li>
    <li>MCQ</li>
</ul>

<div class="details-content">
    <div class="container">
        <div class="heading">
            Create Multiple Choice Question
        </div>
        <div class="content">
            <!--            option selection button-->
            <div class="session option-btn">
                <div class="left">MCQ</div>
                <div class="right">TRUE/FALSE</div>
            </div>

            <div class="session">Question</div>
            <div class="session">Answer 1</div>
            <div class="session">Answer 2</div>
            <div class="session">Answer 3</div>
            <div class="session">Answer 4</div>

        </div>

        <div class="button-container">
            <!--        Save Session Button-->
            <button type="button" value="Create Session" class="save-btn">Create Session</button>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

</html>







