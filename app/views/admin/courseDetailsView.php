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
    <?php shortIcon("logo1.png"); ?>

</head>

<body>

    <?php linkPhp("navigationBarAdmin"); ?>

    <div class="details-container">
        <header>Course Details</header>

        <!--    Add user button-->
        <button class="add-button" onclick="location.href='<?php echo BASEURL . '/addNewCourse/index' ?>'">Add New Course</button>

        <!--    Search bar     -->
        <form class="search-bar" id="search-form" id="search">
            <input type="text" placeholder="Search.." name="search" id="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>

        <!--    Select user type-->
        <div class="year-type">
            <!-- <button class="type active-type">All</button> -->
            <button id="all" class="type active-type">All</button>
            <button id="one" class="type">1st year</button>
            <button id="two" class="type">2nd year</button>
            <button id="three" class="type">3rd year</button>
            <button id="four" class="type">4th year</button>
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

    <?php linkPhp("notification"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("courseDetails"); ?>

</body>