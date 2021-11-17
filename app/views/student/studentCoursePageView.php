<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Courses</title>

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <?php linkCSS("course_page") ?>

</head>

<body>
    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/studentDashboard/index">Home</a></li>
        <li>Course page</li>
    </ul>

    <!-- CARD LIST START -->
    <div class="card-container center">


        <?php

        while ($row = mysqli_fetch_assoc($data["courseDetails"])) {
            $temp = explode("-", $row["course_name"]);

            echo "
            <a href='" . BASEURL . "/lecturerTopicPage/index/{$row["course_id"]}" . "' style='text-decoration: none;'>
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



        <!-- <div class='card'>
            <div class='face face1'>
                <div class='content'>
                    <h2>SCS2201</h2>
                    <h3>Data Structures and Algorithms III</h3>
                </div>
            </div>

            <div class='face face2'>
                <div class='content'>

                    <div class='percentage-container'>
                        <div class='skills'>
                            <div class='percent'>
                                <div class='progress' style='width: 87%;'></div>
                            </div>
                            <span class='subject-value'>87%</span>
                        </div>
                    </div>

                </div>
            </div>
        </div> -->


    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

</body>

</html>