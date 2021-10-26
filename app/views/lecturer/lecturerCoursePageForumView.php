<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Courses</title>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <?php linkCSS("course_page") ?>

</head>

<body>
    <?php linkPhp("navigationBarLecturer"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
        <li>Forum Course Page</li>
    </ul>

    <div class="header-div">
        <header>Forum Course Page</header>
    </div>

    <!-- CARD LIST START -->
    <div class="card-container center">

        <?php

        while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
            $temp = explode("-", $row["course_name"]);

            echo "
            <a href='" . BASEURL . "/lecturerForumTopic/index/{$row["course_id"]}" . "' style='text-decoration: none;'>
            <div class='card'>
                <div class='face face1'>
                    <div class='content'>
                        <h2>{$temp['0']}</h2>
                        <h3>{$temp['1']}</h3>
                    </div>
                </div>
            </div>
            </a>";
        }

        ?>

    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

</body>

</html>