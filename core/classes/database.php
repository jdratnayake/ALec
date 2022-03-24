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

    public function insertMarks($studentId, $type, $marks, ...$ids)
    {
        $uniqueIdString = $this->createIdString($ids);

        $query = "INSERT INTO student_marks_log(student_id, type, marks, unique_ids) VALUES('$studentId', '$type', '$marks', '$uniqueIdString')";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function deleteMarks()
    {
    }

    public function createIdString($ids)
    {
        $output = "";

        foreach ($ids as $id) {
            $output .= "_" . strval($id);
        }

        return trim($output, "_");
    }
}
