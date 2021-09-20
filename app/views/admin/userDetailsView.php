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
        <header><?php echo $data["headName"]; ?></header>

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
            <button id="all" class="type active-type" onclick="location.href='<?php echo BASEURL . '/userDetails/index' ?>'">All users</button>
            <button id="lec" class="type" onclick="location.href='<?php echo BASEURL . '/userDetails/lecturer' ?>'">Lecturers</button>
            <button id="stu" class="type" onclick="location.href='<?php echo BASEURL . '/userDetails/student' ?>'">Students</button>
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

            <tbody>

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

</body>