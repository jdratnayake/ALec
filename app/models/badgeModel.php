<?php

class BadgeModel extends Database
{
    public function getCourses()
    {
        $query = "SELECT course_id, course_name FROM course ORDER BY course_name";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function insertBadge($name, $description, $points, $courseId, $imageUrl)
    {
        $name = mysqli_real_escape_string($GLOBALS["db"], $name);
        $description = mysqli_real_escape_string($GLOBALS["db"], $description);
        $points = mysqli_real_escape_string($GLOBALS["db"], $points);
        $courseId = mysqli_real_escape_string($GLOBALS["db"], $courseId);

        if ($courseId == "all") {
            $query = "SELECT DISTINCT course_id FROM course";
            $result = mysqli_query($GLOBALS["db"], $query);

            while ($row = mysqli_fetch_assoc($result)) {
                $id = $row["course_id"];

                $query = "INSERT INTO badge VALUES('NULL', '$name', '$description', '$points', '$id', '$imageUrl')";
                mysqli_query($GLOBALS["db"], $query);
            }
        } else {
            $query = "INSERT INTO badge VALUES('NULL', '$name', '$description', '$points', '$courseId', '$imageUrl')";
            mysqli_query($GLOBALS["db"], $query);
        }
    }

    public function getCourseDetails($courseId)
    {
        $query = "SELECT course_id, course_name FROM course WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function getBadgeDetails($courseId)
    {
        $query = "SELECT badge_id, badge_name, badge_image FROM badge WHERE course_id='$courseId' ORDER BY badge_name";
        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function deleteBadge($badgeId)
    {
        $query = "DELETE FROM badge WHERE badge_id='$badgeId'";
        mysqli_query($GLOBALS["db"], $query);
    }
}
