<?php

use function PHPSTORM_META\type;

class UserProfileModel extends Database
{
    public function getType($user_id)
    {
        $query = "SELECT user_type FROM user WHERE user_id='$user_id'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            return $row["user_type"];
        }
    }

    public function getUserDetails($user_id)
    {
        $query = "SELECT user_id, concat(first_name, ' ', last_name) AS name, tele, email FROM user 
        WHERE user_id='$user_id'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            return $row;
        }
    }

    public function getRandomName($user_id)
    {
        $query = "SELECT CONCAT(random_first_name, ' ', random_last_name) AS name FROM student WHERE user_id='$user_id' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["name"];
    }

    public function getRegistrationNo($user_id, $type)
    {
        if ($type == "lec") {
            $query = "SELECT lecturer_no FROM lecturer WHERE user_id='$user_id'";
            $result = mysqli_query($GLOBALS["db"], $query);

            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                return $row["lecturer_no"];
            }
        } else if ($type == "stu") {
            $query = "SELECT index_no FROM student WHERE user_id='$user_id'";
            $result = mysqli_query($GLOBALS["db"], $query);

            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                return $row["index_no"];
            }
        }
    }

    public function getCourseDetails($user_id, $type)
    {
        if ($type == "lec") {
            $query = "SELECT course.course_id, course.course_name FROM course INNER JOIN course_registration_lec 
            WHERE course.course_id=course_registration_lec.course_id AND 
            course_registration_lec.lecturer_id='$user_id'";
        } else if ($type == "stu") {
            $query = "SELECT course.course_id, course.course_name FROM course INNER JOIN course_registration_stu 
            WHERE course.course_id=course_registration_stu.course_id AND 
            course_registration_stu.student_id='$user_id'";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getUnAssignedCourseDetails($user_id, $type)
    {
        if ($type == "lec") {
            $query = "SELECT course_id, course_name FROM course WHERE course_id NOT IN (SELECT course.course_id FROM course INNER JOIN course_registration_lec 
            WHERE course.course_id=course_registration_lec.course_id AND 
            course_registration_lec.lecturer_id='$user_id')";
        } else if ($type == "stu") {
            $query = "SELECT course_id, course_name FROM course WHERE course_id NOT IN (SELECT course.course_id FROM course INNER JOIN course_registration_stu 
            WHERE course.course_id=course_registration_stu.course_id AND 
            course_registration_stu.student_id='$user_id')";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getBadgeDetails($user_id)
    {
        //badge
        //badge_assign
        $query = "SELECT badge.badge_name FROM badge INNER JOIN badge_assign 
        WHERE badge.badge_id=badge_assign.badge_id AND
        badge_assign.student_id='$user_id'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function deleteUserDetails($user_id)
    {
        $query = "DELETE FROM user where user_id='$user_id'";

        $result = mysqli_query($GLOBALS["db"], $query);
        return $result;
    }

    public function addToCourses($user_id, $type, $courseId)
    {
        if ($type == "Lecturer") {
            $query = "INSERT INTO course_registration_lec VALUES('$courseId', '$user_id')";
            mysqli_query($GLOBALS["db"], $query);
        } else if ($type == "Student") {
            $query = "INSERT INTO course_registration_stu VALUES('$courseId', '$user_id')";
        }

        mysqli_query($GLOBALS["db"], $query);
    }

    public function removeFromCourses($user_id, $type, $courseId)
    {
        if ($type == "Lecturer") {
            $query = "DELETE FROM course_registration_lec WHERE lecturer_id='$user_id' AND course_id='$courseId'";
        } else if ($type == "Student") {
            $query = "DELETE FROM course_registration_stu WHERE student_id='$user_id' AND course_id='$courseId'";
        }

        mysqli_query($GLOBALS["db"], $query);
    }
}
