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
                    <a href="<?php echo BASEURL . '/lecturerDashboard/index'; ?>">
                        <i class="fas fa-tachometer-alt"></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                    <span class="tooltip">Dashboard</span>
                </li>
                <li>
                    <a href="<?php echo BASEURL . '/createQuizDashboard/index'; ?>">
                        <i class="fas fa-question-circle"></i>
                        <span class="links_name">Ask Question</span>
                    </a>
                    <span class="tooltip">Ask Question</span>
                </li>
                <li>
                    <a href="<?php echo BASEURL . '/lecturerCoursePage/index'; ?>">
                        <i class="fa fa-graduation-cap"></i>
                        <span class="links_name">My Courses</span>
                    </a>
                    <span class="tooltip">My Courses</span>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-chart-bar"></i>
                        <span class="links_name">Review</span>
                    </a>
                    <span class="tooltip">Review</span>
                </li>
                <li>
                    <a href="<?php echo BASEURL . '/lecturerCoursePageForum/index'; ?>">
                        <i class="far fa-comment-alt"></i>
                        <span class="links_name">Forum</span>
                    </a>
                    <span class="tooltip">Forum</span>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-medal"></i>
                        <span class="links_name">Leaderboard</span>
                    </a>
                    <span class="tooltip">Leaderboard</span>
                </li>

                <div class="profile_content">
                    <div class="profile">
                        <div class="profile_details" onclick="<?php echo "location.href='" . BASEURL . "/editProfile/index" . "'"; ?>">
                            <img <?php srcIMG("profile-picture.jpg") ?> alt="">
                            <div class="name_job">
                                <div class="name" onclick="">Louella Rhodes</div>
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