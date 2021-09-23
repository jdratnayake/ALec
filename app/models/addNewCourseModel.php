<?php

class AddNewCourseModel extends Database
{
    public function nameCheck($name)
    {
        $name = mysqli_real_escape_string($GLOBALS["db"], $name);
        $query = "SELECT * FROM course WHERE course_name='$name' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function addCourse($name, $description, $year)
    {
        $name = mysqli_real_escape_string($GLOBALS["db"], $name);
        $description = mysqli_real_escape_string($GLOBALS["db"], $description);
        $year = mysqli_real_escape_string($GLOBALS["db"], $year);

        $query = "INSERT INTO course(course_name, course_description, year) VALUES
                    ('$name', '$description', '$year')";
        mysqli_query($GLOBALS["db"], $query);
    }
}
