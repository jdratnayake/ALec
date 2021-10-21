<?php

use function PHPSTORM_META\type;

class RegisterModel extends Database
{
    public function emailCheck($email)
    {
        $email = mysqli_real_escape_string($GLOBALS["db"], $email);
        $query = "SELECT * FROM user WHERE email='$email' LIMIT 1";
        $result = mysqli_query($GLOBALS['db'], $query);

        return mysqli_fetch_assoc($result);
    }

    public function userNoCheck($type, $regNo)
    {
        $type = mysqli_real_escape_string($GLOBALS["db"], $type);
        $regNo = mysqli_escape_string($GLOBALS['db'], $regNo);

        if ($type == 2) {
            $query = "SELECT * FROM lecturer WHERE lecturer_no='$regNo' LIMIT 1";
        } else if ($type == 3) {
            $query = "SELECT * FROM student WHERE index_no='$regNo' LIMIT 1";
        }

        $result = mysqli_query($GLOBALS['db'], $query);

        return mysqli_fetch_assoc($result);
    }

    public function addUser($email, $regNo, $fName, $lName, $password, $type)
    {
        if ($type == 2) {
            $type = "lec";
        } else if ($type == 3) {
            $type = "stu";
        }

        //Insert user data
        $query = "INSERT INTO user(first_name, last_name, email, pass, user_type) VALUES ('$fName', '$lName', '$email', '$password', '$type')";
        mysqli_query($GLOBALS['db'], $query);

        //Select user id of that user
        $result = mysqli_fetch_assoc(mysqli_query($GLOBALS['db'], "SELECT user_id FROM user WHERE email='$email' LIMIT 1"));
        $userId = $result["user_id"];

        //Insert data to child tables of user
        if ($type == "lec") {
            $query = "INSERT INTO lecturer VALUES ('$userId', '$regNo')";
        } else if ($type == "stu") {
            $query = "INSERT INTO student VALUES ('$userId', '$regNo')";
        }

        mysqli_query($GLOBALS['db'], $query);
    }

    public function getCourseDetails()
    {
        $query = "SELECT course_id, course_name FROM course";
        $result = mysqli_query($GLOBALS["db"], $query);

        $output = "<option value='null' selected>No course selected</option>";
        while ($row = mysqli_fetch_assoc($result)) {
            $output = $output . "<option value='" . $row["course_id"] . "'>" . $row["course_name"] . "</option>";
        }

        return $output;
    }

    public function removeStudentsYearWise($year, $courseId)
    {
        $year = mysqli_real_escape_string($GLOBALS["db"], $year);
        $courseId = mysqli_real_escape_string($GLOBALS["db"], $courseId);

        $year = (int)$year;
        $currentYear = date("Y") % 100;
        $data = $currentYear - $year;

        $query = "DELETE FROM course_registration_stu WHERE course_id='$courseId' AND student_id IN (SELECT user_id FROM course_registration_stu INNER JOIN student ON student_id=user_id WHERE index_no LIKE '$data%')";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function assignStudentsYearWise($year, $courseId)
    {
        $year = mysqli_real_escape_string($GLOBALS["db"], $year);
        $courseId = mysqli_real_escape_string($GLOBALS["db"], $courseId);

        //Remove specified year students from the course
        $this->removeStudentsYearWise($year, $courseId);

        $year = (int)$year;
        $currentYear = date("Y") % 100;
        $data = $currentYear - $year;

        //Add all students to the course
        $query = "INSERT INTO course_registration_stu(course_id, student_id) 
        SELECT '$courseId' AS course_id, user_id FROM student WHERE index_no LIKE '$data%'";

        mysqli_query($GLOBALS["db"], $query);
    }

    public function assignStudent($indexNo, $courseId)
    {
        $indexNo = mysqli_real_escape_string($GLOBALS["db"], $indexNo);
        $courseId = mysqli_real_escape_string($GLOBALS["db"], $courseId);

        //Get user id of the student
        $query = "SELECT user_id FROM student WHERE index_no='$indexNo' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);
        $userId = mysqli_fetch_assoc($result)["user_id"];

        $query = "SELECT * FROM course_registration_stu WHERE course_id='$courseId' AND student_id='$userId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) == 0) {
            $query = "INSERT INTO course_registration_stu(course_id, student_id) VALUES ('$courseId', '$userId')";
            mysqli_query($GLOBALS["db"], $query);
        }
    }

    public function removeStudent($indexNo, $courseId)
    {
        $indexNo = mysqli_real_escape_string($GLOBALS["db"], $indexNo);
        $courseId = mysqli_real_escape_string($GLOBALS["db"], $courseId);

        //Get user id of the student
        $query = "SELECT user_id FROM student WHERE index_no='$indexNo' LIMIT 1";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) == 1) {
            $userId = mysqli_fetch_assoc($result)["user_id"];

            $query = "DELETE FROM course_registration_stu WHERE course_id='$courseId' AND student_id='$userId'";
            mysqli_query($GLOBALS["db"], $query);
        }
    }

    public function deleteUser($userId, $type)
    {
        if ($type == 2) {
            $query = "SELECT user.user_id FROM user INNER JOIN lecturer ON user.user_id=lecturer.user_id WHERE lecturer_no='$userId' LIMIT 1";
        } else if ($type == 3) {
            $query = "SELECT user.user_id FROM user INNER JOIN student ON user.user_id=student.user_id WHERE index_no='$userId' LIMIT 1";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) == 1) {
            $userId = mysqli_fetch_assoc($result)["user_id"];

            $query = "DELETE FROM user WHERE user_id='$userId'";
            mysqli_query($GLOBALS["db"], $query);
        }
    }
}
