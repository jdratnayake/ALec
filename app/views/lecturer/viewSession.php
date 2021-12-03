<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>View Session</title>

    <!-- CSS File HOME-->
    <?php linkCSS("view_session"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li>View Session</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>Session 01 - 2021/10/01
            <i class="fa fa-circle" id="active-status" aria-hidden="true"></i>
        </header>
    </div>
    <div class="button-container">
        <!--        Start Session Button-->
        <button type="button" value="Start Session" class="main-btn" id="start-session" style="display: none">
            <i class="fa fa-play" aria-hidden="true"></i>
            Start Session
        </button>
        <!--        End Session Button-->
        <button type="button" value="End Session" class="main-btn" id="end-session" style="display: block">
            <i class="fa fa-stop" aria-hidden="true"></i>
            End Session
        </button>

        <!--        New Session Button-->
        <button type="button" value="Add New Session" class="main-btn">Add New Session</button>
    </div>
    <div class="session-details-container">
        <div class="sessions">
            <span class="session-label">Quick Questions</span>
            <!--        Add Quick Question Button-->
            <button type="button" value="Add" class="add-btn"><i class="fa fa-plus" aria-hidden="true"></i>Add</button>
            <span class="session">
                What's the best piece of advice you've ever been given?
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true" style="display: none"></i>
                </span>
            </span>
            <span class="session">
                What's the best piece of advice?
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true" style="display: none"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true"></i>
                </span>
            </span>
        </div>
        <div class="sessions">
            <span class="session-label">Poll Questions</span>
            <!--        Add Quick Question Button-->
            <button type="button" value="Add" class="add-btn"><i class="fa fa-plus" aria-hidden="true"></i>Add</button>
            <span class="session inactive">No questions to show</span>
        </div>
        <div class="sessions">
            <span class="session-label"><a href="#">Live Forum</a></span>
            <span class="session">
                No questions to show
                <span class="vote">
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                    <span class="votes-count">2</span>
                </span>
            </span>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

<?php linkJS("viewSession"); ?>

</body>

</html>





