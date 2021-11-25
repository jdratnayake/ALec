<?php

class CreateBadgeModel extends Database
{
    public function getCourses()
    {
        $query = "SELECT course_id, course_name FROM course ORDER BY course_name";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
