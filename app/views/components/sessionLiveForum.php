<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Live Forum</title>

    <!-- CSS File HOME-->
    <?php linkCSS("live_forum"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
    <li><a href="#">Sessions</a></li>
    <li><a href="#">Session 01 - 2021/10/01</a></li>
    <li>Live Forum</li>
</ul>

<div class="details-content">
    <p class="q-count">3</p>
    <div class="controller-container">
        Go to Polls
    </div>

    <div class="header-container">
        <header>Live Forum</header>
    </div>
    <div class="questions">
        <div class="question">
            What's the best piece of advice you've ever been given?
            <span class="vote">
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                    <span class="votes-count">8</span>
            </span>
        </div>
        <div class="question">
            What’s your favorite flower or plant?
            <span class="vote">
                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                <span class="votes-count">6</span>
            </span>
        </div>
        <div class="question">
            What did you eat for breakfast?
            <span class="vote">
                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                <span class="votes-count">5</span>
            </span>
        </div>
        <div class="question">
            Best book you’ve ever read?
            <span class="vote">
                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                <span class="votes-count">1</span>
            </span>
        </div>
        <div class="question">
            If you could learn one new personal skill, what would it be?
            <span class="vote">
                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                <span class="votes-count">0</span>
            </span>
        </div>
    </div>

    <div class="new-question">
        <!--        Toggle button to toggle between real name and random name-->
        <div class="toggle-btn">
            <span class="toggle-label">Stay Anonymous</span>
            <label for="name-toggle" class="switch">
                <input type="checkbox" id="name-toggle" name="name-toggle">
                <span class="slider round"></span>
            </label>
        </div>
        <label for="new-question"></label>
        <input type="text" name="new-question" id="new-question" placeholder="Add your question here... &#xF040;">
        <i class="fa fa-check-circle-o" aria-hidden="true"></i>
    </div>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

</html>






