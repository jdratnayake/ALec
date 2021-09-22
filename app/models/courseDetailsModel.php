<?php

class CourseDetailsModel extends Database
{
    public function getCourseDetails($year)
    {
        if ($year == "all") {
            $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id GROUP BY course.course_id";
        } else {
            $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id WHERE year='$year' GROUP BY course.course_id";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
