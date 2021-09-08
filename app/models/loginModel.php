<?php

class LoginModel extends Database
{


    /* check email and password are matched */
    public function passwordCheck($email, $password)
    {
        //Remove all special characters in variables
        $email = mysqli_real_escape_string($GLOBALS['db'], $email);
        $password = mysqli_real_escape_string($GLOBALS['db'], $password);

        // echo $email;
        // echo $password;

        //SQL part
        $sql = "SELECT * FROM user WHERE email='$email' LIMIT 1";
        $result = mysqli_query($GLOBALS['db'], $sql);
        $row = mysqli_fetch_assoc($result);


        if (!empty($row) && password_verify("{$password}ALEC", $row['pass'])) {
            return $row;
        }
    }
}
