<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>drafts</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_draftquizzes"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li>Drafts</li>
</ul>

<div class="details-content">
    <div class="header-container">
        <header>Drafts</header>
    </div>
    <div class="button-container">
        <!--    Search bar     -->
        <form method="POST" class="search-bar" id="draft-search">
            <label for="search-tag"></label>

            <input type="text" placeholder="Search.. &#xF002;" name="search-tag" id="search-tag"
                   style="font-family: FontAwesome, Poppins,sans-serif; font-style: normal; font-size: 15px">
        </form>
        <!--        Add draft Button-->
        <button type="button" value="Add New Quiz" class="add-btn" id="add-quiz-btn">Add New Quiz</button>
    </div>

    <!--    Division of All Quizzes-->
    <div class="draft-details-container">
        <!--    Division of Active drafts-->
        <div class="drafts">
            <span class=" draft-label">Today</span>

            <div id="active-drafts">
                <div class='draft'>
                    <div class='draft-details'>
                        <a href="" class='draft-name'>
                                    <span>
                                        Quiz 1
                                    </span>
                        </a>
                    </div>
                    <span class='draft-created-date' style='text-decoration: none; font-size: 10px'>
                                    17/03/2022
                            </span>
                </div>

            </div>
        </div>

        <!--    Division of other drafts-->
        <div class="drafts">
            <span class="draft-label">Old</span>

            <div id="inactive-drafts">
                <div class='draft'>
                    <div class='draft-details'>
                        <a href='' class='draft-name'>
                                <span>
                                    Quiz 2
                                </span>
                        </a>
                    </div>
                    <span class='draft-created-date' style='text-decoration: none; font-size: 10px'>
                                    12/01/2022
                            </span>
                </div>
            </div>

        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>
