<?php
$courseId = $data["bread"]["sessionDetails"]["course_id"];
$sessionId = $data["bread"]["sessionDetails"]["session_id"];
$sessionName = $data["bread"]["sessionDetails"]["session_name"];
$questionCount = $data["question"]["question_count"];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Preview Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("show_poll_openText"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>

    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>

        <?php
        echo
        "
        <li><a href='http://localhost/ALec/attemptPoolQuestion/index/{$courseId}'>$sessionName</a></li>
        ";
        ?>

        <li>Preview Poll</li>
    </ul>

    <div class="details-content">

        <div class="controller-container" onclick="window.location='<?php echo BASEURL . '/sessionLiveForumStudent/index/' . $sessionId; ?>' ">
            Go to Live Forum
            <!-- <p>3</p> -->
        </div>

        <div class="container">
            <div class="heading"></div>

            <div class="content">
                <div class="questions-container">
                    <!-- <span class="participant-row">
                        <i class="fa fa-users" aria-hidden="true"></i>
                        55
                    </span>
                    <span class="question">
                        What was your dream job as a child?
                    </span> -->

                    <!-- Echo question -->
                    <?php
                    echo
                    "
                        <span class='participant-row'>
                            <i class='fa fa-users' aria-hidden='true'></i>
                            {$data["question"]["question_count"]}
                        </span>
                        <span class='question'>
                            {$data["question"]["question"]}
                        </span>
                    ";
                    ?>

                    <div class="answer-container">

                        <?php

                        while ($row = mysqli_fetch_assoc($data["answers"])) {
                            $precentage = $row["answer_count"] * 100 / $questionCount;
                            $precentage = round($precentage, 2);

                            echo
                            "
                            <div class='row'>
                                <div class='answer-label'>{$row["answer"]}</div>
                                <div class='answer'>
                                    <div class='answer-progress pressed' style='width: {$precentage}%'></div>
                                </div>
                                <div class='percentage'>{$precentage}%</div>
                            </div>
                            ";
                        }

                        ?>


                    </div>
                </div>
            </div>

            <div class="button-container">
                <!--        Save Session Button-->
                <button type="button" value="Create Session" class="save-btn">Done</button>
                <!--            --><?php
                                    //
                                    //            if ($data["userType"] == "lec") {
                                    //                
                                    ?>
                <!--                <button type="button" value="Create Session" class="save-btn">Done</button>-->
                <!--                --><?php
                                        //            } else if ($data["userType"] == "stu") {
                                        //                
                                        ?>
                <!--                <button type="button" value="Create Session" class="save-btn" style="display: none">Done</button>-->
                <!--                --><?php
                                        //            }
                                        //
                                        //            
                                        ?>

            </div>
        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>