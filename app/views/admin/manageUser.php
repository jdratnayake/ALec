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

<body>

<?php linkPhp("navigationBarAdmin"); ?>

<div class="details-container">
    <header>Manage Users</header>

    <div class="top">
        <!--    Assign user button-->
        <div class="dropdown">
            <button class="dropbtn">Assign user</button>
            <div class="dropdown-content">
                <a href="#">Year 1</a>
                <a href="#">Year 2</a>
                <a href="#">Year 3</a>
                <a href="#">Year 4</a>
            </div>
        </div>
    </div>

    <!--    Search bar     -->
    <form class="search-bar">
        <input type="text" placeholder="Search.." name="search">
        <button type="submit"><i class="fa fa-search"></i></button>
    </form>

    <!--    Select user type-->
    <div class="year-type">
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
            <th>First name</th>
            <th>Last name</th>
            <th>User type</th>
            <th> </th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td>1</td>
            <td>Pansilu</td>
            <td>Gunaratna </td>
            <td>Student</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>Remove User</span>
                </button>
            </td>
        </tr>

        <tr>
            <td>2</td>
            <td>Sumudu</td>
            <td>Wathsala</td>
            <td>Student</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>Remove User</span>
                </button>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>Charith</td>
            <td>Anjana</td>
            <td>Student</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>Remove User</span>
                </button>
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>Janitha</td>
            <td>Ratnayake</td>
            <td>Student</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>Remove User</span>
                </button>
            </td>
        </tr>

        </tbody>

    </table>
</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

</body>

