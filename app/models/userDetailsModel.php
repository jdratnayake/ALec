<?php

class userDetailsModel extends Database
{
    public function getUserDetails()
    {
        $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type <> 'admin'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) > 0) {
            return $result;
        }
    }

    public function getLectureDetails()
    {
        $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type = 'lec'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) > 0) {
            return $result;
        }
    }

    public function getStudentDetails()
    {
        $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type = 'stu'";
        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) > 0) {
            return $result;
        }
    }
}
