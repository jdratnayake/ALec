<?php

class Router
{
    //Default controller values
    public $controller = "login";
    public $method = "index";
    public $params = [];

    public function __construct()
    {
        $url = $this->url();

        // print_r($url);

        if (!empty($url)) {
            if (file_exists("../app/controllers/" . $url[0] . ".php")) {
                $this->controller = $url[0];
                unset($url[0]);
            } else {
                echo "$url[0].php not found";
            }
        }

        //Include controller
        require_once("../app/controllers/" . $this->controller . ".php");

        //Create controller object
        $this->controller = new $this->controller;

        if (isset($url[1]) && !empty($url[1])) {
            if (method_exists($this->controller, $url[1])) {
                $this->method = $url[1];
                unset($url[1]);
            } else {
                echo "method " . $url[1] . " not found";
            }
        }

        if (isset($url)) {
            $this->params = $url;
        } else {
            $this->params = [];
        }

        //Call the method of the controller class by passing parameters array
        call_user_func_array([$this->controller, $this->method], $this->params);
    }

    public function url()
    {
        if (isset($_GET['url'])) {
            $url = $_GET['url'];
            $url = rtrim($url);
            $url = filter_var($url, FILTER_SANITIZE_URL);
            $url = explode("/", $url);

            //Return the set of url portions as an array
            return $url;
        }
    }
}
