<?php

class StudentDashboardModel extends Database
{
    public function getActiveQuizzesDetails($userId)
    {
        $sql = "SELECT quiz_id, quiz_name, published_date, close_date, duration FROM quiz INNER JOIN course_topic ON quiz.topic_id=course_topic.topic_id WHERE course_id IN (SELECT course_id FROM course_registration_stu WHERE student_id='$userId') AND quiz_id NOT IN(SELECT quiz_id FROM quiz_attempt WHERE student_id='$userId') AND (NOW() >= published_date	OR NOW() >= close_date) ORDER BY published_date;";

        $result = mysqli_query($GLOBALS["db"], $sql);

        return $result;
    }
}
