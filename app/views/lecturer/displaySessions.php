<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Course Badges</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_sessions"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li>Sessions</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>Sessions</header>
    </div>
    <div class="button-container">
        <!--    Search bar     -->
        <form class="search-bar" id="search">
            <label for="search-tag"></label>
            <input type="text" placeholder="Search.. &#xF002;" name="search" id="search-tag"
                   style="font-family: FontAwesome, Poppins,sans-serif; font-style: normal; font-size: 15px">
        </form>
<!--        Add Session Button-->
        <button type="button" value="Add New Session" class="add-btn">Add New Session</button>
    </div>
    <div class="session-details-container">
<!--    Division of Active sessions-->
        <div class="sessions">
            <span class="session-label">Active</span>
            <div class="session">
                <span>Session 1</span>
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true" style="display: none"></i>
                </span>
            </div>
            <div class="session">
                <span>Session 2</span>
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true" style="display: none"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true"></i>
                </span>
            </div>
        </div>
<!--    Division of other sessions-->
        <div class="sessions">
            <span class="session-label">Recent</span>
            <div class="session">
                <span>Session 1</span>
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true" style="display: none"></i>
                </span>
            </div>
            <div class="session">
                <span>Session 2</span>
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true" style="display: none"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true"></i>
                </span>
            </div>
            <div class="session">
                <span>Session 3</span>
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true" style="display: none"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true"></i>
                </span>
            </div>
            <div class="session">
                <span>Session 4</span>
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true" style="display: none"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true"></i>
                </span>
            </div>
        </div>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

<?php linkJS("displaySessions"); ?>

</body>

</html>



