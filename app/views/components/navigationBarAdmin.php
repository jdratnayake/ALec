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
                    <a href="<?php echo BASEURL . '/userDetails/index'; ?>">
                        <i class="fas fa-user"></i>
                        <span class="links_name">User</span>
                    </a>
                    <span class="tooltip">User</span>
                </li>
                <li>
                    <a href="<?php echo BASEURL . '/courseDetails/index'; ?>">
                        <i class="fa fa-graduation-cap"></i>
                        <span class="links_name">Courses</span>
                    </a>
                    <span class="tooltip">Course</span>
                </li>
                <li>
                    <a href="<?php echo BASEURL . '/badge/index'; ?>">
                        <i class="fa fa-certificate"></i>
                        <span class="links_name">Badges</span>
                    </a>
                    <span class="tooltip">Badges</span>
                </li>

                <div class="profile_content">
                    <div class="profile">
                        <div class="profile_details" onclick="<?php echo "location.href='" . BASEURL . "/editProfile/index" . "'"; ?>">
                            <img <?php srcIMG("profile_pic_blue.png") ?> alt="">
                            <div class="name_job">
                                <div class="job">Admin</div>
                            </div>
                        </div>
                        <i class="fas fa-sign-out-alt" id="log_out" onclick="window.location='<?php echo BASEURL . '/logout/index'; ?>'"></i>
                    </div>
                </div>
            </ul>
        </div>
    </div>
    <!-- NAVIGATION BAR - END -->

    <!-- USER-TYPE-DISPLAY - START -->
    <div class="user-type-container">
        <div class="image-container">
            <i class="fa fa-user" aria-hidden="true"></i>
        </div>
        <span class="user-type-label">Admin</span>
    </div>
    <!-- USER-TYPE-DISPLAY - END -->

    <div class="home-content">