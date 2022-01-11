<?php

class CourseDetailsModel extends Database
{
    public function getCourseDetails($year)
    {
        if ($year == "all") {
            $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id GROUP BY course.course_id";
        } else {
            $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id WHERE year='$year' GROUP BY course.course_id";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        return $result;
    }

    public function ajaxGetCourseDetails($year)
    {
        if ($year == "all") {
            $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id GROUP BY course.course_id";
        } else {
            $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id WHERE year='$year' GROUP BY course.course_id";
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        $count = 1;
        $output = "";
        while ($row = mysqli_fetch_assoc($result)) {

            $output .= "<tr>";
            $output .= "<td>{$count}</td>";
            $output .= "<td>{$row['course_name']}</td>";
            $output .= "<td>{$row['year']}</td>";
            $output .= "<td>{$row['count']}</td>";

            $output .= "<td> <button type='button' class='button' onclick=location.href='http://localhost/ALec/courseProfile/index/{$row['course_id']}'><span class='button__text'>View Course</span></button></td>";

            $output .= "</tr>";

            $count++;
        }

        return $output;
    }

    public function getSearchResults($data)
    {
        $data = mysqli_real_escape_string($GLOBALS["db"], $data);

        $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id 
            WHERE course_name LIKE '%$data%' GROUP BY course.course_id";

        $result = mysqli_query($GLOBALS["db"], $query);

        if (mysqli_num_rows($result) == 0) {
            $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id 
            WHERE course_description LIKE '%$data%' GROUP BY course.course_id";
            $result = mysqli_query($GLOBALS["db"], $query);
        }

        if (mysqli_num_rows($result) == 0) {
            $query = "SELECT course.course_id, course.course_name, course.year, COUNT(course_registration_stu.course_id) AS count 
            FROM course LEFT JOIN course_registration_stu 
            ON course.course_id=course_registration_stu.course_id 
            WHERE year LIKE '%$data%'
            GROUP BY course.course_id";
            $result = mysqli_query($GLOBALS["db"], $query);
        }

        $count = 1;
        $output = "";
        while ($row = mysqli_fetch_assoc($result)) {

            $output .= "<tr>";
            $output .= "<td>{$count}</td>";
            $output .= "<td>{$row['course_name']}</td>";
            $output .= "<td>{$row['year']}</td>";
            $output .= "<td>{$row['count']}</td>";

            $output .= "<td> <button type='button' class='button' onclick=location.href='http://localhost/ALec/courseProfile/index/{$row['course_id']}'><span class='button__text'>View Course</span></button></td>";

            $output .= "</tr>";

            $count++;
        }

        return $output;
    }
}
