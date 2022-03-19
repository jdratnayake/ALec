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
        <li><a href="http://localhost/ALec/quizDraft/index">Drafts</a></li>
        <li>Preview Draft Quiz</li>
    </ul>

    <div class="form-content">
        <!-- Quiz heading -->
        <header>
            <?php echo $data["courseName"]; ?>
        </header>

        <!-- Edit , delete buttons-->

        <?php
        $link = "'" . "quizDraftComplete/delete/" . $data["quizDetails"]["quiz_id"] . "'";

        echo " <button type='button' class='dlt'";
        echo 'onclick="deleteFunction(' . $link . ')"';
        echo ">";
        echo '<i class="fa fa-trash" aria-hidden="true"></i>' . "Delete Quiz</button>";
        ?>

        <button type="button" onclick="<?php echo "location.href='" . BASEURL . "/quizDraftComplete/editView/{$data["quizDetails"]["quiz_id"]}" . "'"; ?>" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i>Edit quiz
        </button>

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

        <div class="pub-button-container">
            <!-- I delete id="publish-btn" -->

            <button type="button" onclick="<?php echo "location.href='" . BASEURL . "/quizDraftComplete/create/{$data["quizDetails"]["quiz_id"]}" . "'"; ?>" class="done">
                Create Quiz
            </button>
        </div>

    </div>

    <?php linkPhp("notificationView"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("previewQuiz"); ?>

    <?php linkJS("deleteMessage"); ?>

    <?php linkJS("successMessage"); ?>

</body>

</html>