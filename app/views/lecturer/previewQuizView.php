<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("preview_quiz") ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <div class="form-content">
        <!-- Quiz heading -->
        <header>
            <h2><?php echo $data["courseName"]; ?></h2>
        </header>

        <!-- Edit , delete buttons-->
        <button type="button" class="dlt"><i class="fa fa-trash" aria-hidden="true"></i>Delete quiz</button>
        <button type="button" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i>Edit quiz</button>

        <div class="quiz-name">
            <h2><?php echo $data["quizName"]; ?></h2>
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

            <button id="publish-btn"  type="submit" class="done">Publish</button>

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
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="date-group">
                            <label for="publishdatetime">Publish date and time:</label>
                            <input type="datetime-local" id="publishdatetime" name="publishdatetime">
                        </div>
                        <div class="date-group">
                            <label for="closedatetime">Close date and time:</label>
                            <input type="datetime-local" id="closedatetime" name="closedatetime">
                        </div>

                        <input type="submit" value="Save" name="submit" class="upload-btn">
                    </form>
                </div>
            </div>

        </div>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("previewQuiz"); ?>

</body>

</html>