<?php

class AddTopicModel extends Database
{
    public function getCourseDetails($courseId)
    {
        $query = "SELECT course_id, course_name FROM course WHERE course_id = '$courseId' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function nameCheck($name)
    {
        $name = mysqli_real_escape_string($GLOBALS["db"], $name);

        $query = "SELECT * FROM course_topic WHERE topic_name='$name'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function addNewTopic($courseId, $userId, $name, $description)
    {
        $query = "INSERT INTO course_topic VALUES(NULL, '$courseId', '$userId', '$name', '$description')";
        $result = mysqli_query($GLOBALS["db"], $query);
    }
}
