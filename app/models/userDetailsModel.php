<?php

class userDetailsModel extends Database
{
    const DISPLAY_PAGINATION_COUNT = 10;
    const RECORDS_PER_PAGE = 20;

    public function getFilteredUserDetails($type = "all", $page = 1)
    {
        $displayedPaginationCount = self::DISPLAY_PAGINATION_COUNT;
        $recordPerPage = self::RECORDS_PER_PAGE;

        $startFrom = ($page - 1) * $recordPerPage;


        if ($type == "all") {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type<>'admin'";
        } else {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type = '$type'";
        }
        $result = mysqli_query($GLOBALS["db"], $query);
        $totalRecords = mysqli_num_rows($result);
        $totalPages = ceil($totalRecords / $recordPerPage);


        if ($type == "all") {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type<>'admin'
            GROUP BY user.user_id
            LIMIT $startFrom, $recordPerPage";
        } else {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type = '$type'
            GROUP BY user.user_id
            LIMIT $startFrom, $recordPerPage";
        }
        $result = mysqli_query($GLOBALS["db"], $query);

        //$startFrom initial value is zero
        $count = $startFrom + 1;
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

        $output .= "<form>
        <input type='hidden' id='actor' value='$type'>
        <input type='hidden' id='yearValue' value='0'>
        <input type='hidden' id='displayValue' value='$displayedPaginationCount'>
        <input type='hidden' id='maxValue' value='$totalPages'>
        </form>";

        return $output;
    }

    public function getFilteredUserDetailsByYear($year, $page = 1)
    {
        $displayedPaginationCount = self::DISPLAY_PAGINATION_COUNT;
        $recordPerPage = self::RECORDS_PER_PAGE;

        $startFrom = ($page - 1) * $recordPerPage;

        $year = mysqli_real_escape_string($GLOBALS["db"], $year);

        if ($year == "all") {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type='stu'";
        } else {
            $year = (int)$year;
            $currentYear = date("Y") % 100;
            $data = $currentYear - $year;

            $query = "SELECT user.user_id, first_name, last_name, user_type FROM user 
            INNER JOIN student ON user.user_id=student.user_id
            WHERE index_no LIKE '$data%'";
        }

        $result = mysqli_query($GLOBALS["db"], $query);
        $totalRecords = mysqli_num_rows($result);
        $totalPages = ceil($totalRecords / $recordPerPage);

        if ($year == "all") {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE user_type='stu'
            GROUP BY user.user_id
            LIMIT $startFrom, $recordPerPage";
        } else {
            $year = (int)$year;
            $currentYear = date("Y") % 100;
            $data = $currentYear - $year;

            $query = "SELECT user.user_id, first_name, last_name, user_type FROM user 
            INNER JOIN student ON user.user_id=student.user_id
            WHERE index_no LIKE '$data%'
            GROUP BY user.user_id
            LIMIT $startFrom, $recordPerPage";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        $count = $startFrom + 1;
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

        $output .= "<form>
        <input type='hidden' id='actor' value='stu'>
        <input type='hidden' id='yearValue' value='$year'>
        <input type='hidden' id='displayValue' value='$displayedPaginationCount'>
        <input type='hidden' id='maxValue' value='$totalPages'>
        </form>";

        return $output;
    }

    public function getSearchResults($data)
    {
        $data = mysqli_real_escape_string($GLOBALS["db"], $data);
        $data = str_replace('_', ' ', $data);

        $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE first_name LIKE '%$data%' OR
        last_name LIKE '%$data%'
        ";
        $result = mysqli_query($GLOBALS["db"], $query);


        if (mysqli_num_rows($result) == 0) {
            $query = "SELECT user.user_id, first_name, last_name, user_type FROM user INNER JOIN lecturer ON
            user.user_id=lecturer.user_id
            WHERE lecturer_no LIKE '%$data%'";
            $result = mysqli_query($GLOBALS["db"], $query);
        }

        if (mysqli_num_rows($result) == 0) {
            $query = "SELECT user.user_id, first_name, last_name, user_type FROM user INNER JOIN student ON
            user.user_id=student.user_id
            WHERE index_no LIKE '%$data%'";
            $result = mysqli_query($GLOBALS["db"], $query);
        }

        if (mysqli_num_rows($result) == 0) {
            $query = "SELECT user_id, first_name, last_name, user_type FROM user WHERE email LIKE '%$data%'";
            $result = mysqli_query($GLOBALS["db"], $query);
        }

        $count = 1;
        $output = "";
        while ($row = mysqli_fetch_assoc($result)) {
            if ($row['user_type'] == "lec" || $row['user_type'] == "stu") {
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
        }

        return $output;
    }
}
