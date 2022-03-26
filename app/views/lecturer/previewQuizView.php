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

    <?php linkCSS("time_picker") ?>

    <?php linkCSS("success_message"); ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <?php linkPhp("successMessage");
    printSucessMsg($data["success"]); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb" style="margin-left: 5%">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/lecturerCoursePage/index">My Course</a></li>
        <li><a href="<?php echo BASEURL . "/lecturerTopicPage/index/" . $courseId ?>"><?php echo $courseName; ?></a></li>
        <li>Preview Quiz</li>
    </ul>

    <div class="form-content">
        <!-- Quiz heading -->
        <header>
            <?php echo $data["courseName"]; ?>
        </header>

        <!-- Edit , delete buttons-->

        <?php
        $link = "'" . "previewQuiz/delete/" . $data["quizDetails"]["quiz_id"] . "'";

        echo " <button type='button' class='dlt'";
        echo 'onclick="deleteFunction(' . $link . ')"';
        echo ">";
        echo '<i class="fa fa-trash" aria-hidden="true"></i>' . "Delete Quiz</button>";
        ?>

        <button type="button" onclick="<?php echo "location.href='" . BASEURL . "/editQuiz/index/{$data["quizDetails"]["quiz_id"]}" . "'"; ?>" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i>Edit quiz
        </button>

        <div class="quiz-name">
            <h2><?php echo $data["quizDetails"]["quiz_name"]; ?></h2>
        </div>

        <!--    Quiz details-->
        <?php
        if ($data["quizPublishStatus"] == true) {
            echo
            "
            <div class='date'>
                <div class='start-date'><span>Start date: </span><span>{$data["quizDetails"]["start_date"]}</span></div>
                <div class='end-date'><span>End date: </span><span>{$data["quizDetails"]["close_date"]}</span></div>
                <div class='dur'><span>Duration: </span><span>{$data["quizDetails"]["duration"]}</span></div>
            </div>
            ";
        }
        ?>

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

            <input type="hidden" id="time-hr" value="<?php echo $data["quizDetails"]["hr"] ?>">
            <input type="hidden" id="time-min" value="<?php echo $data["quizDetails"]["min"] ?>">
            <input type="hidden" id="time-sec" value="<?php echo $data["quizDetails"]["sec"] ?>">

            <!--            <button id="publish-btn" type="submit" class="done">Publish</button>-->
            <!--            <button id="unpublish-btn" type="submit" class="done red-done">Unpublish</button>-->

        </div>

        <div class="pub-button-container">

            <?php
            if ($data["quizPublishStatus"] == true) {
                echo
                "
                <button id='unpublish-btn' type='submit' class='done red-done' onclick='unpublishFunction({$data["quizDetails"]["quiz_id"]})'>Unpublish</button>
                ";
            } else {
                echo
                "
                <button id='publish-btn' type='submit' class='done'>Publish</button>
                ";
            }
            ?>

        </div>

        <!-- The Modal -->
        <div id="quiz-info-model" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <div class="modal-header">
                    <span class="close">&times;</span>
                    <h2>Quiz details</h2>
                </div>
                <div class="modal-body">
                    <form action="<?php echo BASEURL . "/previewQuiz/submit/{$data['quizDetails']['quiz_id']}"; ?>" method="post" enctype="multipart/form-data" id="published-form">
                        <div class="date-group">
                            <label class="input-label" for="publishdatetime">Publish date and time:</label>
                            <div class="right-side">
                                <input class="input" type="datetime-local" id="publishdatetime" name="publishdatetime">
                                <div class="error"></div>
                            </div>
                        </div>
                        <div class="date-group">
                            <label class="input-label" for="closedatetime">Close date and time:</label>
                            <div class="right-side">
                                <input class="input" type="datetime-local" id="closedatetime" name="closedatetime">
                                <div class="error"></div>
                            </div>
                        </div>
                        <div class="date-group">
                            <label class="input-label" for="time-picker">Quiz Duration</label>
                            <div class="right-side">
                                <input type="text" name="time-picker" id="time-picker" class="input form-control" placeholder="hrs:mins:secs" />
                                <div class="error"></div>
                            </div>
                        </div>
                        <input type="submit" value="Save" name="submit" class="upload-btn" id="upload-btn">
                    </form>
                </div>
            </div>
        </div>

    </div>

    <?php linkPhp("notificationView"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("previewQuiz"); ?>

    <?php linkJS("timePicker") ?>

    <?php linkJS("quizScheduleValidation") ?>

    <?php linkJS("deleteMessage"); ?>

    <?php linkJS("successMessage"); ?>

    <?php linkJS("unpublishQuiz"); ?>

</body>

</html>