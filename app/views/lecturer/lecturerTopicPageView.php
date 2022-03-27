<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>ALec</title>

    <?php linkCSS("topic_page") ?>

    <?php linkCSS("success_message"); ?>
</head>

<body>

    <?php linkPhp("navigationBarLecturer") ?>



    <?php linkPhp("successMessage");
    printSucessMsg($data["success"]); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb" style="margin-left: 5%">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/lecturerCoursePage/index">My Course</a></li>
        <li><?php echo explode("-", $data["courseDetails"]["course_name"])[0]; ?></li>
    </ul>

    <div class="topic-container center">
        <header><?php echo $data["courseDetails"]["course_name"]; ?></header>

        <p>
            <?php echo nl2br($data["courseDetails"]["course_description"]); ?>
        </p>

        <button class="add-topic" type="button" value="add-topic" onclick="location.href='<?php echo BASEURL . '/addTopic/index/' . $data['bread']['courseId'] ?>'">
            Add topic</button>

        <?php

        while ($row = mysqli_fetch_assoc($data["topicDetails"])) {
            $questionLink = "'" . "lecturerTopicPage/deleteTopic/" . $row['topic_id'] . "'";

            echo

            "<div class='topic'>
                <button class='collapsible'>
                    <span>
                        {$row['topic_name']}
                    </span>
                </button>
                <div class='content'>
                <div class='button-set'>
                    <button class='edit-btn' id='edit-name' onclick=\"openEditTopicModal({$row['topic_id']}, '{$row['topic_name']}')\"><i class='fa fa-pencil' aria-hidden='true'></i>Edit topic</button>
                    <button class='dlt-btn' onclick=\"deleteFunction($questionLink)\"><i class='fa fa-trash' aria-hidden='true'></i>Delete topic</button>
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
                    </div>
                </li>
                ";
            }

            echo "</ul>
            </div>
            </div>";
        }

        ?>

        <!-- <div class="topic">
            <button class="collapsible">
                <span>
                    <span class="hidden">
                        <i onclick="" class="fa fa-trash" aria-hidden="true"></i>
                        <i onclick="" class="fa fa-pencil" aria-hidden="true"></i>
                    </span>
                    Course Outline
                </span>
            </button>

            <div class="content">
                <p class="quiz-head">Quizzes</p>
                <ul>
                    <li>
                        <div class="tooltip">
                            <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <span class="icon-tooltip">Edit quiz</span>
                        </div>
                        <div class="tooltip">
                            <a href="#">Quiz 1</a>
                            <span class="text-tooltip">View quiz</span>
                        </div>
                    </li>
                    <li>
                        <div class="tooltip">
                            <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <span class="icon-tooltip">Edit quiz</span>
                        </div>
                        <div class="tooltip">
                            <a href="#">Quiz 2</a>
                            <span class="text-tooltip">View quiz</span>
                        </div>
                    </li>
                    <li>
                        <div class="tooltip">
                            <a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <span class="icon-tooltip">Edit quiz</span>
                        </div>
                        <div class="tooltip">
                            <a href="#">Quiz 3</a>
                            <span class="text-tooltip">View quiz</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div> -->

    </div>

    <!-- The Modal -->
    <div id="edit-name-model" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <div class="modal-header">
                <span class="close">&times;</span>
                <h2>Edit Topic</h2>
            </div>

            <div class="modal-body">
                <form action="" method="post" id="editTopic">
                    <div class="date-group">
                        <label for="topicName">Topic Name :</label>

                        <div class="right-side">
                            <input type="text" id="topicName" name="topicName" value="" class="name-input"">
                            <div class=" error">
                        </div>
                    </div>
            </div>
            <input type="submit" value="Save" name="submit" class="upload-btn" id="save-btn">
            </form>
        </div>
    </div>
    </div>


    <?php linkPhp("notificationView"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("topic_page"); ?>

    <?php linkJS("successMessage"); ?>

    <?php linkJS("deleteMessage"); ?>

    <?php linkJS("topicRenameValidation"); ?>

</body>

</html>