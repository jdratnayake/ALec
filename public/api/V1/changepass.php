<?php
	
	require "db.php";
	
	$userId = $_POST["user_id"];
	$pass = $_POST["pass"];

	$pass = password_hash($pass, PASSWORD_DEFAULT);
	
	$sql = "UPDATE user SET pass='$pass', status='1' WHERE user_id='$userId'";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error";
	}
	
	mysqli_close($conn);
?>
