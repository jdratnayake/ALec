<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("review_quiz"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <!-- **********CSS END********** -->
</head>

<body>

    <?php linkPhp("navigationBarLecturer") ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/review/index">Review</a></li>
        <li><?php echo $data["bread"]["quizName"]; ?></li>
    </ul>

    <div class="details-container">

        <input type="hidden" id="quizSummary-label" value="<?php echo $data["quizSummary"]["label"]; ?>">
        <input type="hidden" id="quizSummary-data" value="<?php echo $data["quizSummary"]["data"]; ?>">

        <input type="hidden" id="quizQuestionSummary-label" value="<?php echo $data["quizQuestionSummary"]["label"]; ?>">
        <input type="hidden" id="quizQuestionSummary-data" value="<?php echo $data["quizQuestionSummary"]["data"]; ?>">

        <div class="col2">
            <header>Poll Statistics</header>
            <div class="chart-container">
                <span class="chart-heading">Marks of Students</span>
                <canvas class="chart" id="myChartQuiz"></canvas>

                <span class="chart-heading">Success Rates of Questions</span>
                <canvas class="chart" id="myChartQuizQuestion"></canvas>
            </div>

            <div class="table-container">
                <table class="table-content">
                    <thead>
                        <tr>
                            <th>Index No.</th>
                            <th>Name</th>
                            <th>Total Marks</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
                        while ($row = mysqli_fetch_assoc($data["studentsResults"])) {
                            $link = BASEURL . "/badgeAward/index/" . $data["courseId"] . "/" . $row['user_id'];

                            echo
                            "
                            <tr onclick=\"window.location='{$link}';\">
                                <td>{$row['index_no']}</td>
                                <td>{$row['name']}</td>
                                <td>{$row['marks']}%</td>
                            </tr>
                            ";
                        }
                        ?>

                        <!-- <tr>
                            <td>19000472</td>
                            <td>Pansilu Gunaratne</td>
                            <td>64.00%</td>
                        </tr> -->

                    </tbody>
                </table>
            </div>
        </div>

    </div>

    <?php linkPhp("footer"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("lib/chart.min"); ?>

    <?php linkJS("reviewQuizView"); ?>

</body>

</html>