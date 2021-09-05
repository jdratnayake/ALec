<?php

class alecFramework
{
    public function view($viewName, $data = [])
    {
        if (file_exists("../app/views/" . $viewName . ".php")) {
            require_once("../app/views/$viewName.php");
        } else {
            echo "<div style='margin: 0;padding: 10px;background-color: silver;'> $viewName.php file not found </div>";
        }
    }

    public function model($modelName, $data = [])
    {
        if (file_exists("../app/models/" . $modelName . ".php")) {
            require_once("../app/models/$modelName.php");
        } else {
            echo "<div style='margin: 0;padding: 10px;background-color: silver;'> $modelName.php file not found";
        }
    }
}
