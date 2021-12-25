<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Preview Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("display_Poll_MCQ"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/courseSelectionSessions/index">Sessions</a></li>
        <li>Preview Poll</li>
    </ul>

    <div class="details-content">

        <div class="controller-container">
            Go to Live Forum
            <p>3</p>
        </div>

        <div class="container">
            <div class="heading">
            </div>

            <!-- If question available then display the question -->
            <?php
            if (!empty($data["sessionDetails"]["active_question_id"])) {
                $type = $data["question"]["question_type"];
                echo
                "
                <div class='content'>
                <div class='bar-div'>
                    <div id='time-bar' class='time-bar' style='width: 100%'></div>
                </div>
                <div class='time-div'>
                    <p id='time-display'>60</p>
                    <p> secs remaining</p>
                </div>

                <div class='questions-container'>
                    <span class='question'>
                        {$data["question"]["question"]}
                    </span>
                ";


                while ($row = mysqli_fetch_assoc($data["answers"])) {
                    echo
                    "
                    <span class='answer'>
                        <input type='radio' id='answer-1' name='answer'>
                        <label for='answer-1'>{$row['choice_name']}</label>
                    </span>
                    ";
                }

                echo
                "
                </div>

                <div class='button-container'>
                    <button type='button' value='Create Session' class='save-btn'>Done</button>
                </div>
                </div>
                ";
                if ($type == "mcq" or $type == "mcq-tf") {
                } else if ($type == "open") {
                }

                echo
                "
                <div class='content' id='session-question-status' style='display: none'>
                ";
            } else {
                echo
                "
                <div class='content' id='session-question-status'>
                ";
            }

            echo
            "
                    <div class='content-message'>
                        <i class='fa fa-spinner' aria-hidden='true'></i>
                        No active polls to show
                    </div>
                </div>
            ";
            ?>

            <!-- <div class='content'>
                <div class='bar-div'>
                    <div id='time-bar' class='time-bar' style='width: 100%'></div>
                </div>
                <div class='time-div'>
                    <p id='time-display'>60</p>
                    <p> secs remaining</p>
                </div>

                <div class='questions-container'>
                    <span class='question'>
                        Which is not a property of a transaction?
                    </span>
                    <span class='answer'>
                        <input type='radio' id='answer-1' name='answer'>
                        <label for='answer-1'>Atomicity</label>
                    </span>
                    <span class='answer'>
                        <input type='radio' id='answer-2' name='answer'>
                        <label for='answer-2'>Inclusion</label>
                    </span>
                    <span class='answer'>
                        <input type='radio' id='answer-3' name='answer'>
                        <label for='answer-3'>Consistency</label>
                    </span>
                </div>

                <div class='button-container'>
                    <button type='button' value='Create Session' class='save-btn'>Done</button>
                </div>
            </div> -->

            <!-- <div class='content'>
                <div class='bar-div'>
                    <div id='time-bar' class='time-bar' style='width: 100%'></div>
                </div>
                <div class='time-div'>
                    <p id='time-display'>60</p>
                    <p> secs remaining</p>
                </div>

                <div class='questions-container'>
                    <label for='question'>What was your dream job as a child?</label>
                    <input type='text' class='question' placeholder='Enter your answer here...' id='question'>
                </div>

                <div class='button-container'>
                    <button type='button' value='Create Session' class='save-btn'>Done</button>
                </div>
            </div> -->

        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("timeBar"); ?>

</body>

</html>