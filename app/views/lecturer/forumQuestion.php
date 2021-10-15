<!--questioners' or repliers' identity should be hidden in the students' view-->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.png"); ?>

    <title>ALec</title>

    <?php linkCSS("forum_question") ?>
</head>

<body>

<?php linkPhp("navigationBarLecturer"); ?>

<!--    breadcrumb-->
<ul class="breadcrumb">
    <li><a href="http://localhost/ALec/lecturerDashboard/index">Home</a></li>
    <li><a href="http://localhost/ALec/lecturerCoursePageForum/index">Forum Course Page</a></li>
    <li><a href="http://localhost/ALec/lecturerForumTopic/index/56">Discussion Forum SCS 1208</a></li>
    <li>Forum discussion</li>
</ul>

<div class="forum-container">
        <h2>Will MAC addresses run out?</h2>

        <div class="question">
            <div class="profile_img_info">
                <div class="img">
                    <img <?php srcIMG("profile_pic.svg"); ?> alt="profile_pic">
                </div>
                <div class="info">
                    <p class="name">M F RIZWAN</p>
                    <p class="place"><span><i class="far fa-calendar-minus"></i></span>
                        24 Jul 2021
                    </p>
                </div>
                <div class="button-set">
                    <button class="action-button" value="reply">Reply</button>
                    <button class="action-button delete" value="delete-reply">Delete</button>
                </div>
            </div>

            <p class="question-content">
                Will MAC addresses run out?
                MAC address is 48-bits in length and can provide 281.5 trillion addresses.
                This means that is highly unlikely for us to run out of MAC addresses anytime soon in the future.
                If we run out of all possible MAC addresses, is it possible to have duplicates?
            </p>

        </div>
        <div class="answer">
            <div class="profile_img_info">
                <div class="img">
                    <img <?php srcIMG("profile_pic.svg"); ?> alt="profile_pic">
                </div>
                <div class="info">
                    <p class="name">M F RIZWAN</p>
                    <p class="place"><span><i class="far fa-calendar-minus"></i></span>
                        24 Jul 2021
                    </p>
                </div>
                <div class="button-set">
                    <button class="action-button" value="reply">Reply</button>
                    <button class="action-button delete" value="delete-reply">Delete</button>
                </div>
            </div>

            <p class="answer-content">
                The requirement is for the MAC address to be unique within the local network,
                as IPv4 is used to uniquely identify all devices, and since the IPv6 also supports this,
                we could reuse MAC addresses, as they are not visible beyond the local network.

                These are some of the points that I think and I made a research on, and by research,
                I mean a google search. Hope this helps guys, and if you have more valid points please do share.
            </p>

        </div>
        <div class="answer">
            <div class="profile_img_info">
                <div class="img">
                    <img <?php srcIMG("profile_pic.svg"); ?> alt="profile_pic">
                </div>
                <div class="info">
                    <p class="name">M F RIZWAN</p>
                    <p class="place"><span><i class="far fa-calendar-minus"></i></span>
                        24 Jul 2021
                    </p>
                </div>
                <div class="button-set">
                    <button class="action-button" value="reply">Reply</button>
                    <button class="action-button delete" value="delete-reply">Delete</button>
                </div>
            </div>
            <p class="answer-content">
                References: <br>
                https://stackoverflow.com/questions/44873804/will-mac-address-ever-run-out-of-combinations
                https://www.quora.com/Are-MAC-addresses-going-to-run-out-in-a-few-years
                https://blog.michaelfmcnamara.com/2013/03/are-we-running-out-of-mac-addresses/
                https://community.infosecinstitute.com/discussion/67301/do-manufacturers-recycle-mac-addresses
            </p>

        </div>
</div>

<?php linkPhp("notification"); ?>

<?php linkPhp("footer"); ?>

</body>

</html>
