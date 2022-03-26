<?php

class editProfileModel extends Database
{
    public function getUserDetails($userId, $type)
    {
        if ($type == "lec") {
            $query = "SELECT first_name, last_name, email, tele, user_type, lecturer_no AS reg_no, img FROM user
            INNER JOIN lecturer ON lecturer.user_id=user.user_id
            WHERE user.user_id='$userId' LIMIT 1";
        } else if ($type == "stu") {
            $query = "SELECT first_name, last_name, email, tele, user_type, index_no AS reg_no, img FROM user 
            INNER JOIN student ON student.user_id=user.user_id
            WHERE user.user_id='$userId' LIMIT 1";
        } else if ($type == "admin") {
            $query = "SELECT first_name, last_name, email, tele, user_type, '' AS reg_no, img FROM user 
            WHERE user.user_id='$userId' LIMIT 1";
        }

        $result = mysqli_query($GLOBALS["db"], $query);
        $row = mysqli_fetch_assoc($result);

        if ($row["user_type"] == "lec") {
            $row["user_type"] = "Lecturer";
        } else if ($row["user_type"] == "stu") {
            $row["user_type"] = "Student";
        }

        return $row;
    }

    public function updateUserDetails($userId, $fName, $lName, $tele)
    {
        $fName = mysqli_real_escape_string($GLOBALS["db"], $fName);
        $lName = mysqli_real_escape_string($GLOBALS["db"], $lName);
        $tele = mysqli_real_escape_string($GLOBALS["db"], $tele);

        $query = "UPDATE user SET first_name='$fName', last_name='$lName', tele='$tele' WHERE user_id='$userId'";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function getCourseDetails($userId, $type)
    {
        if ($type == "lec") {
            $query = "SELECT course_name FROM course_registration_lec INNER JOIN course ON course.course_id=course_registration_lec.course_id WHERE lecturer_id='$userId' GROUP BY course_name";
            $result = mysqli_query($GLOBALS["db"], $query);
        } else if ($type == "stu") {
            $query = "SELECT course_name FROM course_registration_stu INNER JOIN course ON course.course_id=course_registration_stu.course_id WHERE student_id='$userId' GROUP BY course_name";
            $result = mysqli_query($GLOBALS["db"], $query);
        } else {
            $result = false;
        }



        return $result;
    }

    public function insertFileName($userId, $fileName)
    {
        $fileName = mysqli_real_escape_string($GLOBALS["db"], $fileName);

        $query = "UPDATE user SET img='$fileName' WHERE user_id='$userId'";
        mysqli_query($GLOBALS["db"], $query);
    }
}
