<?php

class ManageUserModel extends Database
{
    public function getCourseName($courseId)
    {
        $query = "SELECT course_name FROM course WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["course_name"];
    }

    public function getNotAssignUserDetails($courseId, $type)
    {
        if ($type == "lec") {
            $query = "SELECT user_id, first_name, last_name, user_type  FROM user LEFT JOIN course_registration_lec ON user_id=lecturer_id AND course_id='$courseId' WHERE user_type='lec' AND course_id IS NULL";
        } else if ($type == "stu") {
            $query = "SELECT user_id, first_name, last_name, user_type  FROM user LEFT JOIN course_registration_stu ON user_id=student_id AND course_id='$courseId' WHERE user_type='stu' AND course_id IS NULL";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function getAssignUserDetails($courseId, $type)
    {
        if ($type == "lec") {
            $query = "SELECT user_id, first_name, last_name, user_type  FROM user INNER JOIN course_registration_lec ON user_id=lecturer_id WHERE user_type='lec' AND course_id='$courseId'";
        } else if ($type == "stu") {
            $query = "SELECT user_id, first_name, last_name, user_type  FROM user INNER JOIN course_registration_stu ON user_id=student_id WHERE user_type='stu' AND course_id='$courseId'";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function assignUser($courseId, $type, $userId)
    {
        if ($type == "lec") {
            $query = "INSERT INTO course_registration_lec VALUES('$courseId', '$userId')";
        } else if ($type == "stu") {
            $query = "INSERT INTO course_registration_stu VALUES('$courseId', '$userId')";
        }

        mysqli_query($GLOBALS["db"], $query);
    }

    public function removeUser($courseId, $type, $userId)
    {
        if ($type == "lec") {
            $query = "DELETE FROM course_registration_lec WHERE course_id='$courseId' AND lecturer_id='$userId'";
        } else if ($type == "stu") {
            $query = "DELETE FROM course_registration_stu WHERE course_id='$courseId' AND student_id='$userId'";
        }

        mysqli_query($GLOBALS["db"], $query);
    }
}
