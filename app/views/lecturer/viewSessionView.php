<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>View Session</title>

    <!-- CSS File HOME-->
    <?php linkCSS("view_session"); ?>

    <?php linkCSS("success_message"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>
    <input type="hidden" id="session-id" value="<?php echo $data["sessionData"]["session_id"]; ?>">

    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/displaySessionsList/index">Sessions</a></li>
        <li>View Session</li>
    </ul>

    <div class="details-content">
        <div class="header-container">
            <h2>
                <?php echo $data["sessionData"]["course_name"]; ?>
            </h2>
            <header>
                <?php echo $data["sessionData"]["session_name"]; ?>

                <?php
                if ($data["sessionData"]["status"] == "T") {
                    echo "<i class='fa fa-circle' id='active-status' aria-hidden='true' style='display: block'></i>";
                } else
                    echo "<i class='fa fa-circle' id='active-status' aria-hidden='true' style='display: none'></i>";
                ?>
            </header>
        </div>
        <div class="button-container">
            <?php
            if ($data["sessionData"]["status"] == "T") {
                echo
                "
                <!--        End Session Button-->
                <button type='button' value='End Session' class='main-btn' id='end-session' style='display: block'>
                    <i class='fa fa-stop' aria-hidden='true'></i>
                    End Session
                </button>
                <!--        Start Session Button-->
                <button type='button' value='Start Session' class='main-btn' id='start-session' style='display: none'>
                    <i class='fa fa-play' aria-hidden='true'></i>
                    Start Session
                </button>
                ";
            } else {
                echo
                "
                <!--        End Session Button-->
                <button type='button' value='End Session' class='main-btn' id='end-session' style='display: none'>
                    <i class='fa fa-stop' aria-hidden='true'></i>
                    End Session
                </button>
                <!--        Start Session Button-->
                <button type='button' value='Start Session' class='main-btn' id='start-session' style='display: block'>
                    <i class='fa fa-play' aria-hidden='true'></i>
                    Start Session
                </button>
                ";
            }
            ?>
            <!--        Delete Session Button-->

            <?php
            $link = "'" . "viewSession/deleteSession/" . $data["sessionData"]["session_id"] . "'";
            ?>

            <button type='button' value='Delete Session' class='main-btn dlt-btn' id='delete-session' style='display: block' <?php echo 'onclick="deleteFunction(' . $link . ')"'; ?>>
                <i class='fa fa-trash' aria-hidden='true'></i>
                Delete Session
            </button>

        </div>
        <div class="session-details-container">
            <!-- <div class="sessions">
            <span class="session-label">Quick Questions</span>

            <button type="button" value="Add" class="add-btn"><i class="fa fa-plus" aria-hidden="true"></i>Add</button>
            <span class="session">
                What's the best piece of advice you've ever been given?
                <span>
                    <i class="fa fa-eye publish-status" aria-hidden="true"></i>
                    <i class="fa fa-eye-slash publish-status" aria-hidden="true" style="display: none"></i>
                </span>
            </span>
            <span class='session'>
                What's the best piece of advice?
                <span>
                    <i class='fa fa-eye publish-status' aria-hidden='true' style='display: none'></i>
                    <i class='fa fa-eye-slash publish-status' aria-hidden='true'></i>
                </span>
            </span>
        </div> -->

            <div class="sessions">
                <span class="session-label">Poll Questions</span>
                <!--        Add Quick Question Button-->
                <button type="button" value="Add" class="add-btn" onclick="location.href='<?php echo BASEURL . "/createPoll/index/{$data["sessionData"]["session_id"]}" ?>'">
                    <i class="fa fa-plus" aria-hidden="true"></i>Add
                </button>

                <?php
                if (mysqli_num_rows($data["questionDetails"]) == 0) {
                    echo
                    "
                    <span class='session inactive'>No questions to show</span>
                    ";
                }

                while ($row = mysqli_fetch_assoc($data["questionDetails"])) {
                    $questionLink = "'" . "viewSession/deleteSessionQuestion/" . $data["sessionData"]["session_id"] . "/" . $row['question_no'] . "'";

                    echo
                    "
                    <span class='session'>
                    <i class='fa fa-ellipsis-v' aria-hidden='true'></i>
                    <span class='option-selection'>
                        <div id='option'>
                            <span onclick=\"deleteFunction($questionLink)\">Delete</span>
                        </div>
                    </span>
                    <span class='question'" . "onclick=\"window.location='http://localhost/ALec/showPollAnswer/index/{$row['question_no']}'\"" . ">{$row['question']}</span>
                        <span class='status-symbols'>
                        <input type='hidden' value='{$row['status']}'>
                        <input type='hidden' value='{$row['question_no']}'>
                    ";

                    if ($row["status"] == "T") {
                        echo
                        "
                        <i class='fa fa-eye publish-status' aria-hidden='true'></i>
                        <i class='fa fa-eye-slash publish-status' aria-hidden='true' style='display: none'></i>
                        ";
                    } else {
                        echo
                        "
                        <i class='fa fa-eye publish-status' aria-hidden='true' style='display: none'></i>
                        <i class='fa fa-eye-slash publish-status' aria-hidden='true'></i>
                        ";
                    }

                    echo
                    "
                        </span>
                    </span>
                    ";
                }
                ?>

            </div>
            <div class="sessions">
                <span class="session-label link-label"><a href="<?php echo BASEURL . "/viewSession/sessionForum/{$data["sessionData"]["session_id"]}" ?>">Live Forum</a></span>

                <?php
                if (mysqli_num_rows($data["forumQuestionDetails"]) == 0) {
                    echo
                    "
                    <span class='session inactive'>No questions to show</span>
                    ";
                }

                while ($row = mysqli_fetch_assoc($data["forumQuestionDetails"])) {
                    echo
                    "
                    <span class='session'>
                        {$row['question']}
                        <span class='vote'>
                            <i class='fa fa-thumbs-o-up vote-highlight' aria-hidden='true'></i>
                            <span class='votes-count'>{$row['points']}</span>
                        </span>
                    </span>
                    ";
                }
                ?>

                <!-- <span class='session inactive'>No questions to show</span> -->
                <!-- <span class="session">
                No questions to show
                <span class="vote">
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                    <span class="votes-count">2</span>
                </span>
            </span> -->
            </div>
        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("viewSession"); ?>

    <?php linkJS("viewSessionQuestion"); ?>

    <?php linkJS("viewSessionOptionSelection"); ?>

    <?php linkJS("deleteMessage"); ?>

</body>

</html>