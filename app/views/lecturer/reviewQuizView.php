<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("test"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <!-- **********CSS END********** -->
</head>

<body>

    <?php linkPhp("navigationBarLecturer") ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb" style="margin-bottom: 0">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li><a href="http://localhost/ALec/review/index">Review</a></li>
        <li>Results</li>
    </ul>

    <div class="details-container">

        <input type="hidden" id="quizSummary-label" value="<?php echo $data["quizSummary"]["label"]; ?>">
        <input type="hidden" id="quizSummary-data" value="<?php echo $data["quizSummary"]["data"]; ?>">

        <input type="hidden" id="quizQuestionSummary-label" value="<?php echo $data["quizQuestionSummary"]["label"]; ?>">
        <input type="hidden" id="quizQuestionSummary-data" value="<?php echo $data["quizQuestionSummary"]["data"]; ?>">

        <div class="col1">
            <ul style="list-style-type:none">
                <li><a href="">Quiz 1</a></li>
                <li><a href="">Quiz 2</a></li>
                <li><a href="">Quiz 3</a></li>
                <li><a href="">Quiz 4</a></li>
                <li><a href="">Quiz 1</a></li>
                <li><a href="">Quiz 2</a></li>
            </ul>
        </div>

        <div class="col2">
            <header>Poll Statistics</header>
            <div class="chart-container">
                <canvas class="chart" id="myChartQuiz"></canvas>

                <canvas class="chart" id="myChartQuizQuestion"></canvas>
            </div>

            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Index No.</th>
                            <th>Name</th>
                            <th>Total Marks</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>19000472</td>
                            <td>Pansilu Gunaratne</td>
                            <td>64.00%</td>
                        </tr>
                        <tr>
                            <td>19001428</td>
                            <td>Janitha Ratnayake</td>
                            <td>98.00%</td>
                        </tr>

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