<?php
$courseId = $data["bread"]["courseDetails"]["course_id"];
$courseName = explode("-", $data["bread"]["courseDetails"]["course_name"])[0];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>ALec</title>

    <?php linkCSS("preview_quiz") ?>

</head>

<body>
    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb" style="margin-left: 5%">
        <li><a href="http://localhost/ALec/studentDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/studentCoursePage/index">My Course</a></li>
        <li><a href="<?php echo BASEURL . "/studentTopicPage/index/" . $courseId ?>"><?php echo $courseName; ?></a></li>
        <li>Preview Quiz</li>
    </ul>

    <div class="form-content">
        <!-- Quiz heading -->
        <header>
            <?php echo $data["courseName"]; ?>
        </header>

        <div class="quiz-name">
            <h2><?php echo $data["quizDetails"]["quiz_name"]; ?></h2>
        </div>

        <!-- Quiz questions and answers container -->
        <div class="details">
            <ol class="all-questions">

                <?php

                while ($row = mysqli_fetch_assoc($data["questions"])) {
                    echo
                    "
                    <li class='question-container'>
                    <div class='question'>
                        {$row['question']}
                    </div>
                    <ol>
                    ";

                    $count = $row["count"];

                    for ($i = 0; $i < $count; $i++) {
                        $choiceRow = mysqli_fetch_assoc($data["questionChoices"]);

                        echo
                        "
                        <li class='answer'>
                            {$choiceRow['choice_name']}
                            <div class='points'>{$choiceRow['points']}%</div>
                        </li>
                        ";
                    }

                    echo
                    "
                    </ol>
                    </li>
                    ";
                }

                ?>

            </ol>

        </div>

    </div>

    <?php linkPhp("notificationView"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>