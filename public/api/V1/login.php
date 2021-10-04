<?php
	
	require "db.php";
	
	$email = $_POST["us_email"];
	$pass = $_POST["us_pass"];
	
	$sql = "SELECT * FROM user WHERE email='$email' LIMIT 1";
	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($result);
	
	if(!empty($row) && password_verify($pass, $row['pass'])){
		
		if($row['user_type'] == 'admin'){
			echo "No Access";
		}
		else{
			echo "Success,".$row['user_id'].",".$row['user_type'];
		}
	}
	else{
		echo "Login fail";
	}
	
	mysqli_close($conn);
?>
