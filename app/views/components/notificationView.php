<!--    Available poll indicator-->
<div class="pop-up">
    <div class="heading">
        <span class="pop-up-heading">Notifications</span>
        <!--        Toggle button to toggle between show or hide read notifications-->
        <div class="toggle-btn">
            <span class="toggle-label">Only show unread</span>
            <label class="switch">
                <input type="checkbox" id="unread-name-toggle" value="bike">
                <span class="slider round"></span>
            </label>
        </div>
    </div>
    <!--    horizontal line-->
    <hr class="heading-divider">
    <div class="notification-details">
        <!-- <div class="notes">
            <span class="note-label">Today</span>
            <div class="note">
                <img <?php srcIMG("session_favicon.png"); ?>>
                <div class="text">
                    <span><b>New session started</b></span> <br>
                    <span>SCS 1201 - Data Structures and Algorithms - I</span> <br>
                    <span>1 minute ago</span>
                </div>
                <div class="read-status">
                    <i class="fa fa-circle hov" aria-hidden="true"></i>
                    <span class="tooltip">Mark as read</span>
                </div>

            </div>
            <div class="note">
                <img <?php srcIMG("question_mark.png"); ?>>
                <div class="text">
                    <span><b>Strings and operations quiz started</b></span> <br>
                    <span>SCS 1201 - Data Structures and Algorithms - I</span> <br>
                    <span>5 minutes ago</span>
                </div>
                <div class="read-status">
                    <i class="fa fa-circle" aria-hidden="true"></i>
                    <span class="tooltip">Mark as read</span>
                </div>
            </div>
            <div class="note">
                <img <?php srcIMG("profile_pic.svg"); ?>>
                <div class="text">
                    <span><b>Anonymous Alligator started a new forum discussion</b></span> <br>
                    <span>SCS 1208 - Operating systems - I</span> <br>
                    <span>13 hours ago</span>
                </div>
                <div class="read-status">
                    <i class="fa fa-circle" aria-hidden="true"></i>
                    <span class="tooltip">Mark as read</span>
                </div>
            </div>
            <div class="note">
                <img <?php srcIMG("BadgeQuestioner.png"); ?>>
                <div class="text">
                    <span><b>You received a new badge</b></span> <br>
                    <span>SCS 1204 - Programming Languages</span> <br>
                    <span>12 hours ago</span>
                </div>
                <div class="read-status">
                    <i class="fa fa-circle" aria-hidden="true"></i>
                    <span class="tooltip">Mark as read</span>
                </div>
            </div>
        </div>
        <div class="notes">
            <span class="note-label">Old</span>
            <div class="note">
                <img <?php srcIMG("logo3.png"); ?>>
                <div class="text">
                    <span><b>Strings and operations quiz started</b></span> <br>
                    <span>SCS 1201 - Data Structures and Algorithms - I</span> <br>
                    <span>5 minutes ago</span>
                </div>
                <div class="read-status">
                    <i class="fa fa-circle" aria-hidden="true"></i>
                    <span class="tooltip">Mark as read</span>
                </div>
            </div>
            <div class="note">
                <img <?php srcIMG("profile_pic.svg"); ?>>
                <div class="text">
                    <span><b>Anonymous Alligator started a new forum discussion</b></span> <br>
                    <span>SCS 1208 - Operating systems - I</span> <br>
                    <span>13 hours ago</span>
                </div>
                <div class="read-status">
                    <i class="fa fa-circle" aria-hidden="true"></i>
                    <span class="tooltip">Mark as read</span>
                </div>
            </div>
            <div class="note">
                <img <?php srcIMG("BadgeRespondent.png"); ?>>
                <div class="text">
                    <span><b>You received a new badge</b></span> <br>
                    <span>SCS 1204 - Programming Languages</span> <br>
                    <span>12 hours ago</span>
                </div>
                <div class="read-status">
                </div>
            </div>
        </div> -->
    </div>
</div>

<div class="notification-container" onclick="showNotification()">
    <i class="fas fa-bell bell-notification"></i>
</div>
<div class="active-status"></div>