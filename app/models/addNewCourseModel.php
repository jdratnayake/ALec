<?php

class AddNewCourseModel extends Database
{
    // Check uniqueness of the entered course name
    public function nameCheck($name)
    {
        $name = mysqli_real_escape_string($GLOBALS["db"], $name);
        $query = "SELECT * FROM course WHERE course_name='$name' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    // Insert the data of new course and returns course id
    public function addCourse($name, $description, $year)
    {
        $name = mysqli_real_escape_string($GLOBALS["db"], $name);
        $description = mysqli_real_escape_string($GLOBALS["db"], $description);
        $year = mysqli_real_escape_string($GLOBALS["db"], $year);

        $query = "INSERT INTO course(course_name, course_description, year) VALUES
                    ('$name', '$description', '$year')";
        mysqli_query($GLOBALS["db"], $query);

        $query = "SELECT course_id FROM course ORDER BY course_id DESC LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return  mysqli_fetch_assoc($result)["course_id"];
    }

    // Create a forum for newly created course
    public function addForum($name, $courseId)
    {
        $name = mysqli_real_escape_string($GLOBALS["db"], $name);

        $query = "INSERT INTO forum(forum_name, course_Id) VALUES ('$name', '$courseId')";

        mysqli_query($GLOBALS["db"], $query);
    }
}
