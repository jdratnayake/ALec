<?php

use function PHPSTORM_META\type;

class UserEditModel extends Database
{
    public function getUserDetails($user_id)
    {
        $query = "SELECT user_type FROM user WHERE user_id='$user_id'";
        $type = mysqli_fetch_assoc(mysqli_query($GLOBALS["db"], $query))["user_type"];

        if ($type == "lec") {
            $query = "SELECT user.user_id, user_type, email, lecturer_no AS reg_no, first_name, last_name FROM `user` INNER JOIN lecturer WHERE user.user_id=lecturer.user_id and user.user_id='$user_id'";
        } else if ($type == "stu") {
            $query = "SELECT user.user_id, user_type, email, index_no AS reg_no, first_name, last_name FROM `user` INNER JOIN student WHERE user.user_id=student.user_id and user.user_id='$user_id'";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result);
    }

    public function emailCheck($email, $user_id)
    {
        $email = mysqli_real_escape_string($GLOBALS["db"], $email);
        $user_id = mysqli_real_escape_string($GLOBALS["db"], $user_id);
        $query = "SELECT * FROM user WHERE email='$email' and user_id<>'$user_id' LIMIT 1";
        $result = mysqli_query($GLOBALS['db'], $query);

        return mysqli_fetch_assoc($result);
    }

    public function userNoCheck($type, $regNo, $user_id)
    {
        $type = mysqli_real_escape_string($GLOBALS["db"], $type);
        $regNo = mysqli_escape_string($GLOBALS['db'], $regNo);
        $user_id = mysqli_real_escape_string($GLOBALS["db"], $user_id);

        if ($type == 2) {
            $query = "SELECT * FROM lecturer WHERE lecturer_no='$regNo' and user_id<>'$user_id' LIMIT 1";
        } else if ($type == 3) {
            $query = "SELECT * FROM student WHERE index_no='$regNo' and user_id<>'$user_id' LIMIT 1";
        }

        $result = mysqli_query($GLOBALS['db'], $query);

        return mysqli_fetch_assoc($result);
    }

    public function updateUser($email, $regNo, $fName, $lName, $password, $user_id, $type, $passwordSignal)
    {
        if ($type == 2) {
            $type = "lec";
        } else if ($type == 3) {
            $type = "stu";
        }

        //Update user data
        if ($passwordSignal == 1) {
            $query = "UPDATE user SET first_name='$fName', last_name='$lName', email='$email', pass='$password'
                        WHERE user_id='$user_id'";
        } else {
            $query = "UPDATE user SET first_name='$fName', last_name='$lName', email='$email'
                        WHERE user_id='$user_id'";
        }
        mysqli_query($GLOBALS['db'], $query);


        //Insert data to child tables of user
        if ($type == "lec") {
            $query = "UPDATE lecturer SET lecturer_no='$regNo' WHERE user_id='$user_id'";
        } else if ($type == "stu") {
            $query = "UPDATE student SET index_no='$regNo' WHERE user_id='$user_id'";
        }

        mysqli_query($GLOBALS['db'], $query);
    }
}
