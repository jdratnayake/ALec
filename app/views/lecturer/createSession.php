<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Course Badges</title>

    <!-- CSS File HOME-->
    <?php linkCSS("create_session"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li>Add New Session</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>New Session</header>
    </div>

    <div class="session-details-container">
        <div class="session-name-container">
            <label for="session-name" class="session-label">Session Name</label>
            <input type="text" name="session-name" id="session-name" placeholder="Enter your session name here... &#xF040;" ">
        </div>
        <div class="sessions">
            <span class="session-label">Quick Questions</span>
<!--        Add Quick Question Button-->
            <button type="button" value="Add" class="add-btn"><i class="fa fa-plus" aria-hidden="true"></i>Add</button>
            <span class="session">What's the best piece of advice you've ever been given?</span>
            <span class="session">What's the best piece of advice?</span>
        </div>
        <div class="sessions">
            <span class="session-label">Poll Questions</span>
<!--        Add Quick Question Button-->
            <button type="button" value="Add" class="add-btn"><i class="fa fa-plus" aria-hidden="true"></i>Add</button>
            <span class="session inactive">No questions to show</span>
        </div>
    </div>

    <div class="button-container">
<!--        Save Session Button-->
        <button type="button" value="Create Session" class="save-btn">Create Session</button>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

</html>




