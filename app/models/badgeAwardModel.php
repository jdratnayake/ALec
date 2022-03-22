<?php

class BadgeAwardModel extends Database
{

    public function getBadgeDetails($studentId, $lecturerId = "0")
    {
        if ($lecturerId == "0") {
            $query = "SELECT badge.badge_id, badge_name, badge_image, user.user_id AS lec_id, CONCAT(first_name, ' ', last_name) AS lec_name FROM badge_assign INNER JOIN badge ON badge_assign.badge_id=badge.badge_id INNER JOIN user ON lecturer_id=user.user_id WHERE badge_assign.student_id='$studentId' ORDER BY awarded_date";
        } else {
            $query = "SELECT badge.badge_id, badge_name, badge_image, user.user_id AS lec_id, CONCAT(first_name, ' ', last_name) AS lec_name FROM badge_assign INNER JOIN badge ON badge_assign.badge_id=badge.badge_id INNER JOIN user ON lecturer_id=user.user_id WHERE badge_assign.student_id='$studentId' AND badge_assign.lecturer_id='$lecturerId' ORDER BY awarded_date";
        }



        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function getUnawardedBadgeDetails($studentId, $lecturerId)
    {
        $query = "";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }
}
