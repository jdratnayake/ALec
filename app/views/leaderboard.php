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
    <link rel="shortcut icon" href="/public/img/logo1.jpg">

    <!-- **********CSS END********** -->
</head>

<body>

    <?php linkPhp("navigationBarLecturer") ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/lecturerDashboard/index">$Home</a></li>
        <li>Leaderboard</li>
    </ul>



    <div class="table-container">

        <header>Leaderboard</header>

        <table class="content-table">
            <thead>
            <tr>
                <th>Rank</th>
                <th>Registration No</th>
                <th>Name</th>
                <th>Points</th>
                <th>Badges</th>
            </tr>
            </thead>

                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>2019/CS/011</td>
                            <td>Chaith Bandara</td>
                            <td>100</td>
                            <td>
                                <button type="button" class="button">
                                    <span class="button__text">View</span>
                                </button>
                            </td>
                        </tr>

                        <tr class="active-row">
                            <td>2</td>
                            <td>2019/CS/142</td>
                            <td>Janitha Ratnayake</td>
                            <td>100</td>
                            <td>
                                <button type="button" class="button">
                                    <span class="button__text">View</span>
                                </button>
                            </td>
                        </tr>

                        <tr>
                            <td>3</td>
                            <td>2019/CS/047</td>
                            <td>Pansilu Gunaratna</td>
                            <td>100</td>
                            <td>
                                <button type="button" class="button">
                                    <span class="button__text">View</span>
                                </button>
                            </td>
                        </tr>

                        <tr>
                            <td>4</td>
                            <td>2019/CS/184</td>
                            <td>Sumudu Wathsala</td>
                            <td>100</td>
                            <td>
                                <button type="button" class="button">
                                    <span class="button__text">View</span>
                                </button>
                            </td>
                        </tr>
                    </tbody>

                </table>
            </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notification");?>
	
	<?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("notification") ?>

</body>

</html>