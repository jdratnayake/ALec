<?php

class LecturerForumTopicModel extends Database
{
    public function getForumDetails($courseId)
    {
        $query = "SELECT * FROM forum WHERE course_Id='$courseId' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }
}
