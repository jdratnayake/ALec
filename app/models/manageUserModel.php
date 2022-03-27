<?php

class ManageUserModel extends Database
{
    // Return course details
    public function getCourseName($courseId)
    {
        $query = "SELECT course_name FROM course WHERE course_id='$courseId'";
        $result = mysqli_query($GLOBALS["db"], $query);

        return mysqli_fetch_assoc($result)["course_name"];
    }

    // Return currently not assigned users details
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

    // Return currently assigned users details
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

    // Assign a user to a course
    public function assignUser($courseId, $type, $userId)
    {
        if ($type == "lec") {
            $query = "INSERT INTO course_registration_lec VALUES('$courseId', '$userId')";
        } else if ($type == "stu") {
            $query = "INSERT INTO course_registration_stu VALUES('$courseId', '$userId')";
        }

        mysqli_query($GLOBALS["db"], $query);
    }

    // Remove a user from course
    public function removeUser($courseId, $type, $userId)
    {
        if ($type == "lec") {
            $query = "DELETE FROM course_registration_lec WHERE course_id='$courseId' AND lecturer_id='$userId'";
        } else if ($type == "stu") {
            $query = "DELETE FROM course_registration_stu WHERE course_id='$courseId' AND student_id='$userId'";
        }

        mysqli_query($GLOBALS["db"], $query);
    }

    // Returns the details of  assigned or noi assigned users details
    public function getSearchResults($data, $operation, $type, $courseId)
    {
        $data = mysqli_real_escape_string($GLOBALS["db"], $data);
        $operation = mysqli_real_escape_string($GLOBALS["db"], $operation);
        $type = mysqli_real_escape_string($GLOBALS["db"], $type);
        $courseId = mysqli_real_escape_string($GLOBALS["db"], $courseId);

        if ($type == "lec") {
            if ($operation == "Assign") {
                $query = "SELECT user.user_id, first_name, last_name, user_type  FROM user 
                LEFT JOIN course_registration_lec ON user.user_id=lecturer_id AND course_id='$courseId' 
                INNER JOIN lecturer ON user.user_id=lecturer.user_id
                WHERE user_type='lec' AND course_id IS NULL AND
                (first_name LIKE '%$data%' OR
                last_name LIKE '%$data%' OR
                lecturer_no LIKE '%$data%' OR
                email LIKE '%$data%')";
            } else if ($operation == "Remove") {
                $query = "SELECT user_id, first_name, last_name, user_type  FROM user 
                INNER JOIN course_registration_lec ON user_id=lecturer_id 
                WHERE user_type='lec' AND course_id='$courseId'";

                $query = "SELECT user.user_id, first_name, last_name, user_type  FROM user 
                INNER JOIN course_registration_lec ON user.user_id=lecturer_id 
                INNER JOIN lecturer ON user.user_id=lecturer.user_id
                WHERE user_type='lec' AND course_id='$courseId' AND
                (first_name LIKE '%$data%' OR
                last_name LIKE '%$data%' OR
                lecturer_no LIKE '%$data%' OR
                email LIKE '%$data%')";
            }
        } else if ($type == "stu") {
            if ($operation == "Assign") {
                $query = "SELECT user.user_id, first_name, last_name, user_type  FROM user 
                LEFT JOIN course_registration_stu ON user.user_id=student_id AND course_id='$courseId' 
                INNER JOIN student ON user.user_id=student.user_id
                WHERE user_type='stu' AND course_id IS NULL AND
                (first_name LIKE '%$data%' OR
                last_name LIKE '%$data%' OR
                index_no LIKE '%$data%' OR
                email LIKE '%$data%')";
            } else if ($operation == "Remove") {
                $query = "SELECT user.user_id, first_name, last_name, user_type  FROM user 
                INNER JOIN course_registration_stu ON user.user_id=student_id 
                INNER JOIN student ON user.user_id=student.user_id
                WHERE user_type='stu' AND course_id='$courseId' AND
                (first_name LIKE '%$data%' OR
                last_name LIKE '%$data%' OR
                index_no LIKE '%$data%' OR
                email LIKE '%$data%')";
            }
        }

        $result = mysqli_query($GLOBALS["db"], $query);

        $count = 1;

        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo " <td>" . $count . "</td>";
            echo " <td>" . $row["first_name"] . "</td>";
            echo " <td>" . $row["last_name"] . "</td>";
            if ($row["user_type"] == "lec") {
                echo "<td> Lecturer </td>";
            } else if ($row["user_type"] == "stu") {
                echo "<td> Student </td>";
            }

            echo "<td>";

            echo " <button type='button' class='button' onclick=location.href='";
            echo BASEURL . '/manageUser/' . strtolower($operation) . '/' . $courseId . '/' . $type . '/' . $row["user_id"];
            echo "'>";
            echo "<span class='button__text'>" . $operation . "</span>";
            echo "</button>";

            echo "</td>";
            echo "</tr>";

            $count++;
        }
    }
}
