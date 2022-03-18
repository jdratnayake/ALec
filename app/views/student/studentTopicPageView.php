<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>ALec</title>

    <?php linkCSS("topic_page") ?>

</head>

<body>

    <?php linkPhp("navigationBarStudent") ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb" style="margin-left: 5%">
        <li><a href="http://localhost/ALec/studentDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/studentCoursePage/index">My Course</a></li>
        <li><?php echo explode("-", $data["courseDetails"]["course_name"])[0]; ?></li>
    </ul>

    <div class="topic-container center">
        <header><?php echo $data["courseDetails"]["course_name"]; ?></header>

        <p>
            <?php echo $data["courseDetails"]["course_description"]; ?>
        </p>

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
                
                <p class='quiz-head'>Quizzes</p>
                <ul>";

            $count = mysqli_fetch_assoc($data["topicQuizSummary"])["count"];

            for ($i = 0; $i < $count; $i++) {
                $rowQuiz = mysqli_fetch_assoc($data["quizDetails"]);

                echo
                "
                <li>
                    <div class='tooltip'>
                        <a href='" . BASEURL . "/studentTopicPage/previewQuiz/{$rowQuiz['quiz_id']}" . "'>{$rowQuiz['quiz_name']}</a>
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



    <?php linkPhp("notificationView"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("topic_page"); ?>

</body>

</html>