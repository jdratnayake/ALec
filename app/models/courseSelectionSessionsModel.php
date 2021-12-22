<?php

class CourseSelectionSessionsModel extends Database
{
    public function getCourseDetails($userId)
    {
        $query = "SELECT course.course_id, course_name, active_session_id FROM course_registration_stu INNER JOIN course ON course_registration_stu.course_id=course.course_id WHERE student_id='$userId' ORDER BY course_name";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getActiveCourseDetails($userId)
    {
        $query = "SELECT course.course_id FROM course_registration_stu INNER JOIN course ON course_registration_stu.course_id=course.course_id WHERE student_id='$userId' AND active_session_id<>'' ORDER BY course_name";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }
}
