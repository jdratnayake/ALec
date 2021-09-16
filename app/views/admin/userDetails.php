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
        <header>User Details</header>

        <!--    Add user button-->
        <input type="button" class="add-button" id="add-button" name="add-user" value="Add New User">

        <!--    Search bar     -->
        <form class="search-bar">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>

        <!--    Select user type-->
        <form action="" class="user-type">
            <button id="all" class="type active-type">All users</button>
            <button id="lec" class="type">Lecturers</button>
            <button id="stu" class="type">Students</button>
        </form>
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
                    <td>Charith</td>
                    <td>Bandara</td>
                    <td>Student</td>
                    <td>
                        <button type="button" class="button">
                            <span class="button__text">View user</span>
                        </button>
                    </td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>Janitha</td>
                    <td>Ratnayake</td>
                    <td>Student</td>
                    <td>
                        <button type="button" class="button">
                            <span class="button__text">View user</span>
                        </button>
                    </td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>Pansilu</td>
                    <td>Gunaratna</td>
                    <td>Lecturer</td>
                    <td>
                        <button type="button" class="button" onclick="window.location='<?php echo BASEURL . '/profileDetails/index'; ?> ">
                            <span class="button__text">View user</span>
                        </button>
                    </td>
                </tr>

                <tr>
                    <td>4</td>
                    <td>Sumudu</td>
                    <td>Wathsala</td>
                    <td>Admin</td>
                    <td>
                        <button type="button" class="button">
                            <span class="button__text">View user</span>
                        </button>
                    </td>
                </tr>
            </tbody>

        </table>
    </div>

    <?php linkPhp("footer"); ?>

    <?php linkPhp("notification"); ?>

</body>