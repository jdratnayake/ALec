<?php
$courseDetails = $data["bread"]["courseDetails"];
$courseCode = explode("-", $courseDetails["course_name"])[0];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>sessions</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_session_student"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/studentCoursePage/index">MyCourses</a></li>
        <?php
        echo
        "
        <li><a href='http://localhost/ALec/studentTopicPage/index/{$courseDetails['course_id']}'>{$courseCode}</a></li>
        ";
        ?>
        <li>Sessions</li>
    </ul>

    <div class="details-content">
        <div class="header-container">
            <header>Sessions
                <span class="sub-header" style="font-size: 25px;color: rgba(25,52,93,0.8);">
                    <?php echo $courseDetails["course_name"]; ?>
                </span>
            </header>
        </div>

        <div class="sessions-container">

            <!--    Division session-->
            <?php
            while ($row = mysqli_fetch_assoc($data["sessionsDetails"])) {
                $count = (int)$row["count"];

                echo
                "
                <div class='sessions'>
                <div class='session'>
                    <span class='session-name'>{$row['session_name']}</span>
                    <span class='session-created-date'>{$row['date']}</span>
                    <hr>
                    <div class='session-details'>
                        <ol>
                ";

                for ($i = 0; $i < $count; $i++) {
                    $newRow = mysqli_fetch_assoc($data["sessionQuestionDetails"]);

                    echo
                    "
                    <li><a href=''>{$newRow['question']}</a></li>
                    ";
                }

                echo
                "
                        </ol>
                    </div>
                </div>
                </div>
                ";
            }
            ?>


            <!-- <div class='sessions'>
                <div class='session'>
                    <span class='session-name'>Session 1</span>
                    <span class='session-created-date'>17/03/2022</span>
                    <hr>
                    <div class='session-details'>
                        <ol>
                            <li><a href=''>Is this a DFA or NFA?</a></li>
                            <li><a href=''>Which of the following does not represents the given language?
                                    Language: {0,01}</a></li>
                        </ol>
                    </div>
                </div>
            </div> -->

        </div>
    </div>
    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>