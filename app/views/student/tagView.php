<?php

//$temp = $data["forumDetails"]["forum_name"];
//$courseCode = explode("-", $temp)[0];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Shortcut Icon -->
    <?php shortIcon("logo1.jpg"); ?>

    <title>Tags</title>

    <?php linkCSS("tag") ?>
</head>

<body>

    <?php linkPhp("navigationBarStudent"); ?>

    <!--    breadcrumb-->
    <ul class="breadcrumb">
        <li><a href="http://localhost/ALec/studentDashboard/index">Home</a></li>
        <li><a href="#">Tags</a></li>
    </ul>

    <div class="forum-container center">
        <div class="forum-message">
            <header>Tags</header>
        </div>

        <span class="container-label">All Tags</span>
        <div class="tags-container">
            <?php
            while ($row = mysqli_fetch_assoc($data["tagNames"])) {
                echo
                "
                <p>
                {$row["tag_name"]}
                <input type='hidden' value='{$row["tag_id"]}'>
                <i class='fa fa-times' aria-hidden='true'></i>
                </p>
                ";
            }
            ?>

            <!-- <p>machine learning<i class="fa fa-times" aria-hidden="true"></i></p> -->
        </div>

        <button>
            <span class="button-title">
                <i class="fas fa-plus"></i>

                <span class="space-tag"></span>

                <span class="text">
                    Add New Tag
                </span>
            </span>
        </button>

        <!--    Search bar     -->
        <form class="search-bar" id="search">
            <label for="search-tag"></label>
            <input type="text" placeholder="Search.. &#xF002;" name="search" id="search-tag" style="font-family: FontAwesome, Arial,sans-serif; font-style: normal">
        </form>

        <div class="discussion-list">
            <div class="discussion-table-container">
                <ul class="discussion-table">
                    <li class="table-header">
                        <div class="col col-1">Discussion</div>
                        <div class="col col-2">Started by</div>
                        <div class="col col-3">Last post</div>
                    </li>

                    <li class='table-row'>

                        <div class='col col-1' data-label='Discussion'>
                            <a href="#">DATA STRUCTURES AND ALGORITHMS - I</a>
                        </div>
                        <div class='col col-2' data-label='Started by'>
                            <div class='profile_img_info'>
                                <div class='img'>
                                    <img src='http://localhost/ALec/public/img/profile_pic.svg' alt='profile_pic'>
                                </div>
                                <div class='info'>
                                    <p class='name'>P K PEREIRA</p>
                                    <p class='place'> 10.20</p>
                                </div>
                            </div>
                        </div>

                        <div class='col col-3' data-label='Last post'>
                            <div class='profile_img_info'>
                                <div class='img'>
                                    <img src='http://localhost/ALec/public/img/profile_pic.svg' alt='profile_pic'>
                                </div>
                                <div class='info'>
                                    <p class='name'>J K TRAIN</p>
                                    <p class='place'>11.35</p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>

            </div>
        </div>
    </div>

    <?php linkPhp("notification"); ?>

    <?php linkPhp("footer"); ?>

    <?php linkJS("forum"); ?>

</body>

</html>