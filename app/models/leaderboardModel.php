<?php

class LeaderboardModel extends Database
{
    public function getStudentDetails()
    {
        $query = "SELECT student.index_no, CONCAT(user.first_name, ' ', user.last_name) AS full_name FROM student INNER JOIN user ON student.user_id = user.user_id LIMIT 5";
        $result = mysqli_query($GLOBALS["db"],$query);

        return $result;
    }
}
