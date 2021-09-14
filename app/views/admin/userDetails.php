<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ALec</title>

    <!-- CSS File HOME-->
<!--    <link rel="stylesheet" href="/public/css/leaderboard.css">-->

    <link rel="stylesheet" href="/public/css/user_details.css">

    <!-- Shortcut Icon -->
    <link rel="shortcut icon" href="/public/img/logo1.png">

</head>

<body>

    <div class="container">

        <!-- NAVIGATION BAR - START -->
        <div class="sidebar-container">
            <div class="siderbar ">
                <div class="logo_content">
                    <div class="logo">
                        <div class="logo_name">ALec</div>
                    </div>
                    <i class="fas fa-bars" id="btn"></i>
                </div>
                <ul class="nav_list">
                    <li>
                        <a href="#">
                            <i class="fas fa-tachometer-alt"></i>
                            <span class="links_name">Dashboard</span>
                        </a>
                        <span class="tooltip">Dashboard</span>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-user"></i>
                            <span class="links_name">Create User</span>
                        </a>
                        <span class="tooltip">Create User</span>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-graduation-cap"></i>
                            <span class="links_name">Create Courses</span>
                        </a>
                        <span class="tooltip">Create Course</span>
                    </li>


                    <div class="profile_content">
                        <div class="profile">
                            <div class="profile_details">
                                <img alt="">
                                <div class="name_job">
                                    <div class="name">Admin</div>
                                    <div class="job">Admin</div>
                                </div>
                            </div>
                            <i class="fas fa-sign-out-alt" id="log_out" ></i>
                        </div>
                    </div>
                </ul>
            </div>
        </div>
        <!-- NAVIGATION BAR - END -->

        <div class="home-content">
            <div class="details-container">
                <header>User Details</header>

                <!--    Add user button-->
                <input type="button" class="add-button" id="add-button" name="add-user" value="Add new user">

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
<!--                    <button type="button">-->
<!--                        <span>All users</span>-->
<!--                        <span>Lecturers</span>-->
<!--                        <span>Students</span>-->
<!--                    </button>-->
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
                        <td>stu</td>
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
                        <td>stu</td>
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
                        <td>Lec</td>
                        <td>
                            <button type="button" class="button">
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

            <!-- FOOTER - START -->

            <footer class="sticky-footer">
                <p> © Copyright ALec 2021.</p>
            </footer>

            <!-- FOOTER - END -->

        </div>

    </div>

    <div class="pop-up">

    </div>

    <div class="notification-container" onclick="showNotifycation()">
        <i class="fas fa-bell bell-notification"></i>
    </div>

    <!-- FontAwesome Icon -->
    <script src="https://kit.fontawesome.com/3220c9480a.js" crossorigin="anonymous"></script>

    <!-- **********JavaScript START********** -->
    <script src="/public/js/basic.js"></script>
    <!-- **********JavaScript END********** -->

</body>
