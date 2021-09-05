<?php

function loadClass($className)
{
    $path = "classes";
    $extension = ".php";
    $fullPath = $path . "/" . $className . $extension;

    if (!file_exists($fullPath)) {
        include $fullPath;
    }

    include "classes/$className";
}

spl_autoload_register("loadClass");

$router = new router;
