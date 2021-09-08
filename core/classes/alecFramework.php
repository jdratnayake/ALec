<?php

class AlecFramework
{
    public function view($viewName, $data = [])
    {
        $url = "../app/views/" . $viewName . ".php";

        if (file_exists($url)) {
            require_once($url);
        } else {
            echo "<div style='margin: 0;padding: 10px;background-color: silver;'> $viewName.php file not found </div>";
        }
    }

    public function model($modelName, $data = [])
    {
        $url = "../app/models/" . $modelName . ".php";

        if (file_exists($url)) {
            require_once($url);

            //Convert the first character to uppercase
            $modelName = ucfirst($modelName);

            return new $modelName;
        } else {
            echo "<div style='margin: 0;padding: 10px;background-color: silver;'> $modelName.php file not found";
        }
    }

    public function helper($helperName)
    {
        $url = "../core/helpers/" . $helperName . ".php";

        if (file_exists($url)) {
            require_once($url);
        } else {
            echo "<div style='margin:0;padding: 10px;background-color:silver;'>Sorry helper $helperName file not found </div>";
        }
    }

    //Session management methods - start

    public function setSession($sessionName, $sessionValue)
    {
        if (!empty($sessionName) && !empty($sessionValue)) {
            $_SESSION[$sessionName] = $sessionValue;
        }
    }

    public function getSession($sessionName)
    {
        if (!empty($sessionName)) {
            return $_SESSION[$sessionName];
        }
    }

    public function unsetSession($sessionName)
    {
        if (!empty($sessionName)) {
            unset($_SESSION[$sessionName]);
        }
    }

    public function destroy()
    {
        session_destroy();
    }

    //Session management methods - end

    public function redirect($path)
    {
        header("location:" . BASEURL . "/" . $path);
    }
}
