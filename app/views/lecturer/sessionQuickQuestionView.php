<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create session</title>

    <!-- CSS File HOME-->
    <?php linkCSS("quick_question"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li><a href="#">Add New Session</a></li>
    <li>Quick Questions</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>Quick Questions</header>
        <i class="fa fa-refresh" aria-hidden="true"></i>
    </div>
    <div class="questions">
        <div class="question">
            What's the best piece of advice you've ever been given?
        </div>
        <div class="question">
            What’s your favorite flower or plant?
        </div>
        <div class="question">
            What did you eat for breakfast?
        </div>
        <div class="question">
            Best book you’ve ever read?
        </div>
        <div class="question">
            If you could learn one new personal skill, what would it be?
        </div>
    </div>

    <button type="button" value="Create Session" class="custom-btn">
        <i class="fa fa-plus" aria-hidden="true"></i>
        Add Custom Question
    </button>

    <div class="button-container">
<!--        Cancel Button-->
        <button type="button" value="Create Session" class="cancel-btn">Cancel</button>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

</html>





