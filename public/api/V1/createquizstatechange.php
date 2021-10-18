<?php
	
	require "db.php";
	
	$quiz_id = $_POST["quiz_ID"];
	
	$sql = "UPDATE quiz SET status = 'create' WHERE quiz_id = '$quiz_id';";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error Creating the quiz!";
	}
	
	mysqli_close($conn);
?>
