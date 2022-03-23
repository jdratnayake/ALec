<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("course_details"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <?php linkCSS("success_message"); ?>
</head>

<body>

    <?php linkPhp("navigationBarAdmin"); ?>


    <?php linkPhp("successMessage");
    printSucessMsg($data["success"]); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li>Course page</li>
    </ul>

    <div class="details-container">

        <header>Course Details</header>

        <div class="filter-container">
            <!--    Search bar     -->
            <form class="search-bar" id="search">
                <label for="search"></label>
                <input type="text" placeholder="Search by course name.. &#xF002;" name="search-tag" id="search-tag" style="font-family: FontAwesome, Arial,sans-serif; font-style: normal">
<!--                <button type="submit"><i class="fa fa-search"></i></button>-->
            </form>

            <!--    Add user button-->
            <button class="add-button" onclick="location.href='<?php echo BASEURL . '/addNewCourse/index' ?>'">Add New Course</button>
        </div>

        <div class="year-selection" id="year-selection">
            <label for="year">Select the year</label>
            <select name="year" id="year">
                <option value="all" selected>All years</option>
                <option value="1">1st year</option>
                <option value="2">2nd year</option>
                <option value="3">3rd year</option>
                <option value="4">4th year</option>
            </select>
        </div>

    </div>

    <div class="table-container">
        <table class="content-table">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Course name</th>
                    <th>Year</th>
                    <th>No.of students</th>
                    <th> </th>
                </tr>
            </thead>

            <tbody id="table-content">

                <?php
                $count = 1;
                while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
                    echo "<tr>";
                    echo " <td>" . $count . "</td>";
                    echo " <td>" . $row["course_name"] . "</td>";
                    echo " <td>" . $row["year"] . "</td>";
                    echo " <td>" . $row["count"] . "</td>";
                    echo "<td>";

                    echo " <button type='button' class='button' onclick=location.href='";
                    echo BASEURL . '/courseProfile/index/' . $row["course_id"];
                    echo "'>";
                    echo "<span class='button__text'>View Course</span>";
                    echo "</button>";

                    echo "</td>";
                    echo "</tr>";

                    $count++;
                }
                ?>

            </tbody>

        </table>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notificationView"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

    <?php linkJS("courseDetails"); ?>

    <?php linkJS("successMessage"); ?>

</body>