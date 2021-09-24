<?php

class createQuizDashboardModel extends Database
{
    public function getCourseDetails($userId)
    {
        $query = "SELECT course.course_id, course_name FROM course INNER JOIN course_registration_lec ON
                course.course_id=course_registration_lec.course_id WHERE lecturer_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getTopicDetails($courseId)
    {
        $query = "SELECT topic_id, topic_name FROM course_topic WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        $output = '<option value="null" selected>Select your topic</option>';

        while ($row = mysqli_fetch_assoc($result)) {
            $output .= "<option value={$row['topic_id']}>{$row['topic_name']}</option>";
        }

        return $output;
    }
}
