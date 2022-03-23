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

    public function getSpecificBadgeDetail($lecturerId, $studentId, $badgeId)
    {
        $query = "SELECT badge.badge_id, badge_name, badge_image, user.user_id AS lec_id, CONCAT(first_name, ' ', last_name) AS lec_name FROM badge_assign INNER JOIN badge ON badge_assign.badge_id=badge.badge_id INNER JOIN user ON lecturer_id=user.user_id WHERE badge_assign.student_id='$studentId' AND badge_assign.lecturer_id='$lecturerId' AND badge.badge_id='$badgeId'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return mysqli_fetch_assoc($result);
    }

    public function getUnawardedBadgeDetails($courseId, $studentId)
    {
        $query = "SELECT badge_id, badge_name FROM badge WHERE course_id ='$courseId' AND badge_id NOT IN(SELECT badge_id FROM badge_assign WHERE student_id='$studentId')";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function awardBadge($lecturerId, $studentId, $badgeId)
    {
        $query = "INSERT INTO badge_assign(student_id, badge_id, lecturer_id) VALUES('$studentId', '$badgeId', '$lecturerId')";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function removeBadge($lecturerId, $studentId, $badgeId)
    {
        $query = "DELETE FROM badge_assign WHERE student_id='$studentId' AND badge_id='$badgeId' AND lecturer_id='$lecturerId'";

        mysqli_query($GLOBALS["db"], $query);
    }
}
