<?php
$userId = $data["userId"];
$sessionId = $data["bread"]["sessionDetails"]["session_id"];
$sessionName = $data["bread"]["sessionDetails"]["session_name"];
$courseId = $data["bread"]["sessionDetails"]["course_id"];

$errors = $data["errors"];
?>

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
    <input type="hidden" id="session-id" value='<?php echo $sessionId; ?>'>
    <input type="hidden" id="questionIdArray" value='<?php echo $data["questionIdArray"]; ?>'>

    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/courseSelectionSessions/index">Sessions</a></li>

        <?php
        echo
        "
        <li><a href='http://localhost/ALec/attemptPoolQuestion/index/{$courseId}'>{$sessionName}</a></li>
        ";
        ?>

        <li>Live Forum</li>
    </ul>

    <div class="details-content">

        <!-- <p class="q-count">3</p> -->
        <div class="controller-container" onclick="window.location='<?php echo BASEURL . '/attemptPoolQuestion/index/' . $courseId; ?>' ">
            Go to Polls
        </div>

        <div class="header-container">
            <header>Live Forum</header>
        </div>
        <div class="questions-container">

            <?php

            while ($row = mysqli_fetch_assoc($data["questionDetails"])) {

                if ($row['student_id'] != $userId && $row['random_status'] == "T") {
                    $name = $row["random_name"];
                } else {
                    $name = $row["name"];
                }

                if ($row['vote_status'] != "") {
                    $styleName = "style='color: orange;'";
                } else {
                    $styleName = "";
                }

                echo
                "
                <div class='question'>
                    <input type='hidden' value='{$row['question_id']}'>
                    <span class='text'>
                        {$row['question']}
                        <span class='name'>{$name}</span>
                        <span class='name'>{$row['post_time']}</span>
                    </span>
                    <span class='vote'>
                        <i class='fa fa-thumbs-o-up vote-highlight' aria-hidden='true' {$styleName}></i>
                        <span class='votes-count'>{$row['points']}</span>
                    </span>
                </div>
                ";
            }

            ?>

            <!-- <div class='question'>
                <span class='text'>
                    What's the best piece of advice you've ever been given?
                    <span class='name'>Kamalini Anagarasa</span>
                    <span class='name'>1.30 pm</span>
                </span>
                <span class='vote'>
                    <i class='fa fa-thumbs-o-up' aria-hidden='true'></i>
                    <span class='votes-count'>8</span>
                </span>
            </div> -->

        </div>

        <form action="<?php echo BASEURL . "/sessionLiveForumStudent/index/{$sessionId}" ?>" method="POST" id="liveForum-form">
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
                <input type="text" name="new-question" id="new-question" placeholder="Add your question here... &#xF040;" onfocusout="questionValidation()">
                <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                <div class="error"><?php echo $errors["question"]; ?></div>
            </div>
        </form>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("sessionStatusCheck"); ?>

    <?php linkJS("sessionLiveForumStudentValidation") ?>

    <?php linkJS("likeUnlikeForumQuestion") ?>

    <?php linkJS("sessionLiveForumStudentQuestionsUpdate")
    ?>

</body>

</html>