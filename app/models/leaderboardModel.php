<?php

class LeaderboardModel extends Database
{
    // public function getStudentDetails()
    // {
    //     $query = "SELECT student.index_no, CONCAT(user.first_name, ' ', user.last_name) AS full_name FROM student INNER JOIN user ON student.user_id = user.user_id LIMIT 5";
    //     $result = mysqli_query($GLOBALS["db"], $query);

    //     return $result;
    // }

    public function getStudentDetails($year)
    {
        $year = (int)$year;
        $currentYear = date("Y") % 100;
        $data = $currentYear - $year;

        $query = "SELECT user.user_id, index_no, CONCAT(first_name, ' ', last_name) AS name, SUM(marks) AS marks FROM user INNER JOIN student ON user.user_id=student.user_id LEFT JOIN student_marks_log ON user.user_id=student_marks_log.student_id WHERE user_type='stu' AND index_no LIKE '$data%' GROUP BY user_id ORDER BY marks DESC";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }
}
