 <?php
 
 require "db.php";
 
$user_ID = $_GET["user_ID"];
$user_Type = $_GET["user_Type"];
$fName = $_GET["fName"];
$lName = $_GET["lName"];
$regNo = $_GET["regNo"];
$email = $_GET["email"];

 if ($type == 2) {
            $type = "lec";
        } else if ($type == 3) {
            $type = "stu";
        }

        //Update user data
        $query = "UPDATE user SET first_name='$fName', last_name='$lName', email='$email'
                    WHERE user_id='$user_id'";

        mysqli_query($conn, $query);


        //Insert data to child tables of user
        if ($type == "lec") {
            $query = "UPDATE lecturer SET lecturer_no='$regNo' WHERE user_id='$user_id'";
        } else if ($type == "stu") {
            $query = "UPDATE student SET index_no='$regNo' WHERE user_id='$user_id'";
        }

        mysqli_query($conn,$query);
		
?>