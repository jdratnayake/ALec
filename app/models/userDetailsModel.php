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

    public function getFilteredUserDetails($type)
    {
        if ($type == "all") {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type<>'admin'";
        } else {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type = '$type'";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        $count = 1;
        $output = "";
        while ($row = mysqli_fetch_assoc($result)) {

            $output .= "<tr>";
            $output .= "<td>{$count}</td>";
            $output .= "<td>{$row['first_name']}</td>";
            $output .= "<td>{$row['last_name']}</td>";

            if ($row['user_type'] == "lec") {
                $output .= "<td>Lecturer</td>";
            } else if ($row['user_type'] == "stu") {
                $output .= "<td>Student</td>";
            }


            $output .= "<td> <button type='button' class='button' onclick=location.href='http://localhost/ALec/userProfile/index/{$row['user_id']}'><span class='button__text'>View User</span></button></td>";
            $output .= "</tr>";

            $count++;
        }

        return $output;
    }
}
