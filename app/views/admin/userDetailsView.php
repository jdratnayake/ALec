<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("user_details"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

</head>

<body>

    <?php linkPhp("navigationBarAdmin"); ?>

    <div class="details-container">
        <header id="header-title">User Details</header>

        <!--    Add user button-->
        <!-- <input type="button" class="add-button" id="add-button" name="add-user" value="Add New User"> -->
        <button class="add-button" onclick="location.href='<?php echo BASEURL . '/register/index' ?>'">Add New User</button>

        <!--    Search bar     -->
        <form class="search-bar">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>

        <!--    Select user type-->
        <div class="user-type">
            <button id="all" class="type active-type">All users</button>
            <button id="lec" class="type">Lecturers</button>
            <button id="stu" class="type">Students</button>
        </div>

        <div class="year-selection">
            <label for="year">Select the year</label>
            <select name="year" id="year">
                <option value="all_year" selected>All years</option>
                <option value="1st_year">1st year</option>
                <option value="2nd_year">2nd year</option>
                <option value="3rd_year">3rd year</option>
                <option value="4th_year">4th year</option>
            </select>
        </div>
    </div>

    <div class="table-container">
        <table class="content-table">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>User type</th>
                    <th> </th>
                </tr>
            </thead>

            <tbody id="table-content">

                <?php
                $count = 1;
                while ($row = mysqli_fetch_assoc($data["userDetails"])) {
                    echo "<tr>";
                    echo "<td>" . $count . "</td>";
                    echo "<td>" . $row["first_name"] . "</td>";
                    echo "<td>" . $row["last_name"] . "</td>";
                    if ($row["user_type"] === "stu") {
                        echo "<td>" . "Student" . "</td>";
                    } else if ($row["user_type"] === "lec") {
                        echo "<td>" . "Lecturer" . "</td>";
                    }

                    echo "<td>";

                    echo " <button type='button' class='button' onclick=location.href='";
                    echo BASEURL . '/userProfile/index/' . $row["user_id"];
                    echo "'>";
                    echo "<span class='button__text'>View user</span>";
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

    <?php linkJS("userDetails"); ?>

</body>