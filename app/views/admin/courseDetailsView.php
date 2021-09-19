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
    <header>Courses</header>

    <!--    Add user button-->
    <!-- <input type="button" class="add-button" id="add-button" name="add-user" value="Add New User"> -->
    <button class="add-button" >Add New Course</button>

    <!--    Search bar     -->
    <form class="search-bar">
        <input type="text" placeholder="Search.." name="search">
        <button type="submit"><i class="fa fa-search"></i></button>
    </form>

    <!--    Select user type-->
    <div class="user-type">
        <button class="type active-type" >All</button>
        <button class="type" >1st year</button>
        <button class="type" >2nd year</button>
        <button class="type" >3rd year</button>
        <button class="type" >4th year</button>
    </div>
</div>

<div class="table-container">
    <table class="content-table">
        <thead>
        <tr>
            <th>No.</th>
            <th>Course ID</th>
            <th>Course name</th>
            <th>No.of students</th>
            <th> </th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td>1</td>
            <td>SCS 1201</td>
            <td>Data Structures and Algorithms- I</td>
            <td>298</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>View course</span>
                </button>
            </td>

        </tr>
        <tr>
            <td>2</td>
            <td>SCS 1202</td>
            <td>Programming using C</td>
            <td>298</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>View course</span>
                </button>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>SCS 1203</td>
            <td>Database - I</td>
            <td>298</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>View course</span>
                </button>
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>SCS 1204</td>
            <td>Discrete Mathematics- I</td>
            <td>298</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>View course</span>
                </button>
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>SCS 1205</td>
            <td>Computer Systems</td>
            <td>298</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>View course</span>
                </button>
            </td>
        </tr>

        </tbody>

    </table>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>
