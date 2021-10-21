<?php
	
	require "db.php";
	
	$quiz_id = $_POST["quiz_ID"];
	
	$sql = "DELETE FROM quiz WHERE quiz_id='$quiz_id';";
	
	
	if(mysqli_query($conn, $sql)){
		echo "Success";
	}
	else{
		echo "Error Deleting the Topic..!";
	}
	
	mysqli_close($conn);
?>
