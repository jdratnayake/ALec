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
                    <a href="<?php echo BASEURL . '/adminDashboard/index'; ?>">
                        <i class="fas fa-tachometer-alt"></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                    <span class="tooltip">Dashboard</span>
                </li>
                <li>
                    <a href="<?php echo BASEURL . '/register/index'; ?>">
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
                            <img <?php srcIMG("profile-picture.jpg") ?> alt="">
                            <div class="name_job">
                                <div class="name">Louella Rhodes</div>
                                <div class="job">Lecturer</div>
                            </div>
                        </div>
                        <i class="fas fa-sign-out-alt" id="log_out" onclick="window.location='<?php echo BASEURL . '/logout/index'; ?>'"></i>
                    </div>
                </div>
            </ul>
        </div>
    </div>
    <!-- NAVIGATION BAR - END -->


    <div class="home-content">