<?php
$sessionId = $data["bread"]["sessionDetails"]["session_id"];
$questionId = $data["bread"]["sessionDetails"]["question_no"];
$sessionName = $data["bread"]["sessionDetails"]["session_name"];
?>

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
        <li><a href="http://localhost/ALec/lecturerDashboard">Home</a></li>

        <li><a href="http://localhost/ALec/displaySessionsList/index">Sessions</a></li>

        <?php
        echo
        "
        <li><a href='http://localhost/ALec/viewSession/index/{$sessionId}'>$sessionName</a></li>
        ";
        ?>

        <?php
        echo
        "
        <li><a href='http://localhost/ALec/showPollAnswer/index/{$questionId}'>Preview Poll</a></li>
        ";
        ?>

        <li>Respondents</li>
    </ul>

    <div class="details-content">
        <div class="container">
            <div class="heading"></div>

            <div class="content">
                <div class="questions-container">
                    <span class="question">
                        <?php echo $data["question"]["question"]; ?>
                    </span>
                    <span class="question">
                        Answer : <b><?php echo $data["answer"]["choice"]; ?></b>
                    </span>
                    <span class="question">
                        Respondents:
                    </span>
                    <div class="answer-container">

                        <?php

                        while ($row = mysqli_fetch_assoc($data["respondentsDetails"])) {
                            echo
                            "
                            <a href='" . BASEURL . "/badgeAward/index/" . $row["user_id"] . "'><div class='row'>{$row["index_no"]}</div></a>
                            ";
                        }

                        ?>

                        <!-- <div class='row'>D.S.SENANAYAKE</div> -->

                    </div>
                </div>
            </div>

            <div class="button-container">
                <!--        Save Session Button-->
                <button type="button" value="Create Session" class="save-btn" onclick="location.href='<?php echo BASEURL . "/showPollAnswer/index/{$questionId}" ?>'">
                    Back to results
                </button>
            </div>
        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>