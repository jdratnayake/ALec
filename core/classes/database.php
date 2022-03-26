<?php

class Database
{
    public $host = HOST;
    public $user = USER;
    public $database = DATABASE;
    public $password = PASSWORD;

    public function __construct()
    {
        //Database connection
        $GLOBALS['db'] = mysqli_connect($this->host, $this->user, $this->password, $this->database);

        //Check connection
        if ($GLOBALS['db'] === false) {
            die("ERROR: Could not connect. " . mysqli_connect_errno());
        }
    }

    public function insertMarks($studentId, $type, $marks)
    {
        $query = "INSERT INTO student_marks_log(student_id, type, marks) VALUES('$studentId', '$type', '$marks')";

        mysqli_query($GLOBALS["db"], $query);
    }

    // public function createIdString($ids)
    // {
    //     $output = "";

    //     foreach ($ids as $id) {
    //         $output .= "_" . strval($id);
    //     }

    //     return trim($output, "_");
    // }
}
