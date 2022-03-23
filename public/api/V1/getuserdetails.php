<?php

require "db.php";

$user_ID = $_GET["user_ID"];
$user_Type = $_GET["user_Type"];
$sql = '';
 

if ($user_Type == "lec") 
        {
            $sql = "SELECT user.user_id, user_type, email, lecturer_no AS reg_no, first_name, last_name FROM `user` INNER JOIN lecturer WHERE user.user_id=lecturer.user_id and user.user_id='$user_ID'";
        } 
else if ($user_Type == "stu") 
        {
           $sql = "SELECT user.user_id, user_type, email, index_no AS reg_no, first_name, last_name FROM `user` INNER JOIN student WHERE user.user_id=student.user_id and user.user_id='$user_ID'";
        }

if($sql){
		$result = mysqli_query($conn, $sql);
		
		if($result){
			while($row = mysqli_fetch_assoc($result)){
				$arr[] = $row;
			}
			print(json_encode($arr));
		}
	}
	
	mysqli_close($conn);

?>
