<?php
$sessionId = $data["bread"]["sessionDetails"]["session_id"];
$sessionName = $data["bread"]["sessionDetails"]["session_name"];
$questionCount = $data["question"]["question_count"];

//Solving divide by zero issue no one attempt the question
if ($questionCount == 0) {
    $questionCount = 1;
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Preview Poll</title>

    <!-- CSS File HOME-->
    <?php linkCSS("show_poll_mcq"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

</head>

<body>

    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard">Home</a></li>

        <li><a href="http://localhost/ALec/displaySessionsList/index">Sessions</a></li>

        <?php
        echo
        "
        <li><a href='http://localhost/ALec/viewSession/index/{$sessionId}'>$sessionName</a></li>
        ";
        ?>

        <li>Preview Poll</li>
    </ul>

    <div class="details-content">

        <div class="container">
            <div class="heading"></div>

            <div class="content">
                <div class="questions-container">

                    <?php
                    echo
                    "
                        <span class='participant-row'>
                            <i class='fa fa-users' aria-hidden='true'></i>
                            {$data["question"]["question_count"]}
                        </span>
                        <span class='question'>
                            {$data["question"]["question"]}
                        </span>
                    ";
                    ?>

                    <!-- Echo answers -->
                    <?php
                    while ($row = mysqli_fetch_assoc($data["answers"])) {
                        $precentage = $row["answer_count"] * 100 / $questionCount;
                        $precentage = round($precentage, 2);

                        echo
                        "
                        <div class='row'>
                            <div class='answer'>
                                <div class='answer-progress pressed' style='width: {$precentage}%'>
                                    {$row["choice_name"]}
                                </div>
                            </div>
                            {$precentage}%
                        </div>
                        ";
                    }
                    ?>

                </div>
            </div>

            <div class="button-container">
                <button type="button" value="Create Session" class="save-btn" onclick="location.href='<?php echo BASEURL . "/viewSession/index/{$sessionId}" ?>'">
                    Done
                </button>
            </div>

        </div>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>