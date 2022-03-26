<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("leaderboard"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <!-- **********CSS END********** -->
</head>

<body>

    <?php

    if ($data["userType"] == "stu") {
        linkPhp("navigationBarStudent");
    } else if ($data["userType"] == "lec") {
        linkPhp("navigationBarLecturer");
    }

    ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li>Leaderboard</li>
    </ul>

    <div class="table-container">

        <header>Leaderboard</header>

        <div class="year-selection">
            <label for="year-selection">Year:</label>
            <select name="year-selection" id="year-selection" class="year-dropdown">
                <option value='1' selected>Year 1</option>
                <option value='2'>Year 2</option>
                <option value='3'>Year 3</option>
                <option value='4'>Year 4</option>
            </select>
        </div>

        <table class="content-table">
            <thead>
                <tr>
                    <th>Rank</th>
                    <th>Index No</th>
                    <th>Name</th>
                    <th>Points</th>
                    <th>Badges</th>
                </tr>
            </thead>

            <tbody id="leaderboard-content">

                <?php
                $i = 1;
                while ($row = mysqli_fetch_assoc($data["studentDetails"])) {

                    if (empty($row["marks"])) {
                        $row["marks"] = 0;
                    }

                    echo "
                        <tr>
                            <td>$i</td>
                            <td>{$row["index_no"]}</td>
                            <td>{$row["name"]}</td>
                            <td>{$row["marks"]}</td>
                            <td>
                                <button type='button' class='button'>
                                    <span class='button__text'>View</span>
                                </button>
                            </td>
                        </tr>
                        ";
                    $i++;
                }
                ?>

                <!--                        <tr class="active-row">-->
                <!--                            <td>2</td>-->
                <!--                            <td>2019/CS/142</td>-->
                <!--                            <td>Janitha Ratnayake</td>-->
                <!--                            <td>100</td>-->
                <!--                            <td>-->
                <!--                                <button type="button" class="button">-->
                <!--                                    <span class="button__text">View</span>-->
                <!--                                </button>-->
                <!--                            </td>-->
                <!--                        </tr>-->
            </tbody>

        </table>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("leaderboard") ?>

</body>

</html>