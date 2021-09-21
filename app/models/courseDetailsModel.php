<?php

class CourseDetailsModel extends Database
{
    public function getCourseDetails($year)
    {
        if ($year == "all") {
            $query = "SELECT course.course_name, course.year, COUNT(course.course_id) AS count 
            FROM course INNER JOIN course_registration_stu 
            WHERE course.course_id=course_registration_stu.course_id GROUP BY course.course_id";
        } else {
            $query = "SELECT course.course_name, course.year, COUNT(course.course_id) AS count 
            FROM course INNER JOIN course_registration_stu 
            WHERE course.course_id=course_registration_stu.course_id and year='$year' GROUP BY course.course_id";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
