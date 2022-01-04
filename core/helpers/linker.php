<?php

//To link CSS files
function linkCSS($cssPath)
{
    $url = BASEURL . "/public/css/" . $cssPath . ".css?version=74";
    echo '<link rel="stylesheet" type="text/css" href="' . $url . '">';
}

//To link JS files
function linkJS($jsPath)
{
    $url = BASEURL . "/public/js/" . $jsPath . ".js?v=11";
    echo '<script src="' . $url . '"></script>';
}

//To link short icons
function shortIcon($iconPath)
{
    $url = BASEURL . "/public/img/" . $iconPath;
    echo '<link rel="shortcut icon" href="' . $url . '">';
}

//To link images
function srcIMG($imgPath)
{
    $url = "src='" . BASEURL . "/public/img/" . $imgPath . "'";
    echo $url;
}

//Return image path
function srcBadgeIMG($imgPath)
{
    $url = "src='" . BASEURL . "/public/badge_pic/" . $imgPath . "'";
    return $url;
}

//To link profile pictures
function srcProfileIMG($imgPath)
{
    $url = "src='" . BASEURL . "/public/pic_data/" . $imgPath . "'";
    echo $url;
}


// To link php files in view
function linkPhp($phpPath)
{
    $url = "../app/views/components/" . $phpPath . ".php";
    include $url;
}
