<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("topic_page") ?>
</head>

<body>

    <?php linkPhp("navigationBarLecturer") ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb" style="margin-left: 5%">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/lecturerCoursePage/index">My Course</a></li>
        <li><?php echo explode("-", $data["courseName"])[0]; ?></li>
    </ul>

    <div class="topic-container center">
        <header><?php echo $data["courseName"]; ?></header>

        <button class="add-topic" type="button" value="add-topic" onclick="location.href='<?php echo BASEURL . '/addTopic/index/' . $data['bread']['courseId'] ?>'">
            Add topic
        </button>

        <?php

        while ($row = mysqli_fetch_assoc($data["topicDetails"])) {
            echo

            "<div class='topic'>
                <button class='collapsible'>
                    <span>
                        {$row['topic_name']}
                    </span>
                </button>
                <div class='content'>
                <div class='button-set'>
                    <button class='edit-btn'><i class='fa fa-pencil' aria-hidden='true'></i>Edit topic</button>
                    <button class='dlt-btn'><i class='fa fa-trash' aria-hidden='true'></i>Delete topic</button>
                </div>
                <p class='quiz-head'>Quizzes</p>
                <ul>";

            $count = mysqli_fetch_assoc($data["topicQuizSummary"])["count"];

            for ($i = 0; $i < $count; $i++) {
                $rowQuiz = mysqli_fetch_assoc($data["quizDetails"]);

                echo
                "
                <li>
                    <div class='tooltip'>
                        <a href='" . BASEURL . "/previewQuiz/index/{$rowQuiz['quiz_id']}" . "'>{$rowQuiz['quiz_name']}</a>
                        <span class='text-tooltip'>View quiz</span>
                    </div>
                </li>
                ";
            }

            echo "</ul>
            </div>
            </div>";
        }

        ?>

    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("topic_page"); ?>

</body>

</html>