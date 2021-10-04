<?php

class StudentCoursePageForumModel extends Database
{
    public function getCourseDetails($userId)
    {
        $query = "SELECT course.course_id, course_name, student_id FROM course INNER JOIN course_registration_stu ON course.course_id=course_registration_stu.course_id WHERE student_id='$userId'";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
