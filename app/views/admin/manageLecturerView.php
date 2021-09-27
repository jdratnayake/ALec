<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
    <?php linkCSS("manage_user"); ?>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

</head>

<body onload="checkCookie()">

    <?php linkPhp("navigationBarAdmin"); ?>

    <div class="details-container">
        <header><?php echo $data["courseName"] ?></header>

        <div class="top">
            <!--    Assign user button-->
            <button id="remove-button" class="dropbtn" value="remove" onclick="location.href='<?php echo BASEURL . '/manageUser/assignUser/' . $data["courseId"] . '/' .  $data["type"]  ?>'">Remove Lecturer</button>
            <button id="assign-button" class="dropbtn active-type" value="assign" onclick="location.href='<?php echo BASEURL . '/manageUser/index/' . $data["courseId"] . '/' .  $data["type"] ?>'">Assign Student</button>
        </div>

        <!--    Search bar     -->
        <form class="search-bar">
            <label for="search_bar"></label>
            <input id="search_bar" type="text" placeholder="Search.." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>

    </div>

    <div class="table-container">

        <table class="content-table" id="assign-user">
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
                    echo " <td>" . $count . "</td>";
                    echo " <td>" . $row["first_name"] . "</td>";
                    echo " <td>" . $row["last_name"] . "</td>";
                    if ($row["user_type"] == "lec") {
                        echo "<td> Lecturer </td>";
                    } else if ($row["user_type"] == "stu") {
                        echo "<td> Student </td>";
                    }

                    echo "<td>";

                    echo " <button type='button' class='button' onclick=location.href='";
                    echo BASEURL . '/manageUser/' . strtolower($data["buttonName"]) . '/' . $data["courseId"] . '/' . $data["type"] . '/' . $row["user_id"];
                    echo "'>";
                    echo "<span class='button__text'>" . $data["buttonName"] . "</span>";
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

    <?php linkJS("manageLecturer"); ?>
</body>