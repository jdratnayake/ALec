<?php

class BadgeAwardModel extends Database
{

    // Return badge details
    // 1. Return student awareded badges [First condition]
    // 2. Return student badges which is given by lecturer [Second condition]
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

    // Returns the awarded badges details
    public function getSpecificBadgeDetail($lecturerId, $studentId, $badgeId)
    {
        $query = "SELECT badge.badge_id, badge_name, badge_image, user.user_id AS lec_id, CONCAT(first_name, ' ', last_name) AS lec_name FROM badge_assign INNER JOIN badge ON badge_assign.badge_id=badge.badge_id INNER JOIN user ON lecturer_id=user.user_id WHERE badge_assign.student_id='$studentId' AND badge_assign.lecturer_id='$lecturerId' AND badge.badge_id='$badgeId'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return mysqli_fetch_assoc($result);
    }

    //Return unawarded badges of students specific to the course
    public function getUnawardedBadgeDetails($courseId, $studentId)
    {
        $query = "SELECT badge_id, badge_name FROM badge WHERE course_id ='$courseId' AND badge_id NOT IN(SELECT badge_id FROM badge_assign WHERE student_id='$studentId')";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    // Award a badge to a student
    public function awardBadge($lecturerId, $studentId, $badgeId)
    {
        //Add badge marks to student log
        $marks = $this->getBadgeMarks($badgeId);
        $this->insertMarks($studentId, "badge", $marks);

        $query = "INSERT INTO badge_assign(student_id, badge_id, lecturer_id) VALUES('$studentId', '$badgeId', '$lecturerId')";

        mysqli_query($GLOBALS["db"], $query);
    }

    // Remove a badge from student
    public function removeBadge($lecturerId, $studentId, $badgeId)
    {
        //Add badge marks to student log
        $marks = $this->getBadgeMarks($badgeId);
        $this->insertMarks($studentId, "badge", -$marks);

        $query = "DELETE FROM badge_assign WHERE student_id='$studentId' AND badge_id='$badgeId' AND lecturer_id='$lecturerId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    // Return badge marks
    public function getBadgeMarks($badgeId)
    {
        $query = "SELECT points FROM badge WHERE badge_id='$badgeId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["points"];
    }
}
