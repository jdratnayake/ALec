<?php

class LecturerCoursePageForumModel extends Database
{
    public function getCourseDetails($userId)
    {
        $query = "SELECT course.course_id, course_name, lecturer_id FROM course INNER JOIN course_registration_lec ON course.course_id=course_registration_lec.course_id WHERE lecturer_id='$userId'";

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
