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

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/adminDashboard/index">Home</a></li>
        <li>User details</li>
    </ul>

    <div class="details-container">
        <header id="header-title">User Details</header>

        <div class="filter-container">
            <!--    Search bar     -->
            <form class="search-bar" id="search">
                <label for="search"></label>
                <input type="text" placeholder="Search.." name="search" id="search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>

            <!--    Select user type-->
            <div class="user-type">
                <button id="all" class="type active-type">All users</button>
                <button id="lec" class="type">Lecturers</button>
                <button id="stu" class="type">Students</button>
            </div>

            <!--    Add user button-->
            <button class="add-button" onclick="location.href='<?php echo BASEURL . '/register/index' ?>'">Add New User</button>
        </div>

        <div class="year-selection hidden-year" id="year-selection">
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
                    <th>First name</th>
                    <th>Last name</th>
                    <th>User type</th>
                    <th> </th>
                </tr>
            </thead>

            <tbody id="table-content">

                <!-- HIDDEN VARIABLES -->
                <form>
                    <input type="hidden" id="actor" value="all">
                    <input type="hidden" id="displayValue" value="0">
                    <input type="hidden" id="maxValue" value="0">
                </form>
            </tbody>

        </table>
    </div>

    <div class="pagination-container">
        <div class="pagination" id="pagination">
            <a href="-1">&laquo;</a>
            <a href="#" class="tag active">1</a>
            <a href="#" class="tag">2</a>
            <a href="#" class="tag">3</a>
            <a href="#" class="tag">4</a>
            <a href="#" class="tag">5</a>
            <a href="#" class="tag">6</a>
            <a href="-2">&raquo;</a>
        </div>
    </div>



    <?php linkPhp("footer"); ?>

    <?php linkPhp("notification"); ?>

    <?php linkJS("lib/jquery-3.6.0.min"); ?>

    <?php linkJS("userDetails"); ?>

    <?php linkJS("userDetailsSearch") ?>
</body>