<?php
	
	require "db.php";
	
	$reply_id = $_GET["reply_id"];
	
	$sql = "DELETE FROM forum_reply   WHERE reply_id='$reply_id';";
	
	
	if(mysqli_query($conn, $sql)){
		echo "Success";
	}
	else{
		echo "Error Deleting the Topic..!";
	}
	
	mysqli_close($conn);
?>
