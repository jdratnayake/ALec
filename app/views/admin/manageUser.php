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
            <button id="assign-button" class="dropbtn" onclick="changeToRemove()">Assign user</button>
            <button id="remove-button" class="dropbtn" onclick="changeToAssign()">Remove user</button>
    </div>

    <!--    Search bar     -->
    <form class="search-bar">
        <label for="search_bar"></label>
        <input id="search_bar" type="text" placeholder="Search.." name="search">
        <button type="submit"><i class="fa fa-search"></i></button>
    </form>

    <!--    Select user type-->
    <div class="user-type">
        <button class="type active-type" >All</button>
        <button class="type" >Lecturer</button>
        <button class="type" >Student</button>
    </div>
</div>

<div class="table-container">

    <table class="content-table" id="remove-user">
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
            <td>6</td>
            <td>Hirasha</td>
            <td>Pooliyadda</td>
            <td>Lecturer</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>Remove User</span>
                </button>
            </td>
        </tr>
        </tbody>
    </table>

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
        <tr>
            <td>4</td>
            <td>Janitha</td>
            <td>Ratnayake</td>
            <td>Student</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>Assign User</span>
                </button>
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>Dinuni</td>
            <td>Fernando</td>
            <td>Lecturer</td>
            <td>
                <button type='button' class='button'>
                    <span class='button__text'>Assign User</span>
                </button>
            </td>
        </tr>
        </tbody>

    </table>

</div>

<?php linkPhp("footer"); ?>

<?php linkPhp("notification"); ?>

<?php linkJS("manageUser"); ?>

</body>

