<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>ALec</title>

    <?php linkCSS("display_results") ?>

</head>

<body>
<?php linkPhp("navigationBarStudent"); ?>

<div class="form-content">
    <!-- Quiz heading -->
    <header>Quiz 1</header>

    <!--quizCompletedResult-->
    <div class="quizCompleted has-text-centered" id="result">

        <!-- quizCompletedIcon: Achievement Icon -->
        <span class="icon">
                <i class="fa fa-check-circle-o"></i>
            </span>

        <h2 class="title">
            Quiz Successfully Completed!
        </h2>
        <p class="subtitle">
            Total score: 72%
        </p>

        <div class="scores">
            <table>
                <thead>
                <tr>
                    <th>Question</th>
                    <th>Marks</th>
                    <th>Success Rate</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Question 1</td>
                    <td>2.5</td>
                    <td>98.00%</td>
                </tr>
                <tr>
                    <td>Question 2</td>
                    <td>0</td>
                    <td>1.20%</td>
                </tr>
                <tr>
                    <td>Question 3</td>
                    <td>2</td>
                    <td>67.15%</td>
                </tr>

                </tbody>
                <tfoot>
                <tr>
                    <td colspan="3">Total score: 72%</td>
                </tr>
                </tfoot>
            </table>
        </div>

        <div class="button-container">
            <a href="">Back</a>
        </div>

    </div>
    <!--/quizCompetedResult-->

</div>

<?php linkPhp("notificationView"); ?>

<?php linkPhp("footer"); ?>

<?php linkJS("lib/jquery-3.6.0.min"); ?>

<?php linkJS("notification") ?>

</body>

</html>