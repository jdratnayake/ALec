<?php
	
	require "db.php";
	
	$topic_ID = $_GET["topic_ID"];
	
	$sql = "DELETE FROM forum_topic   WHERE topic_ID='$topic_ID';";
	
	
	if(mysqli_query($conn, $sql)){
		echo "Success";
	}
	else{
		echo "Error Deleting the Topic..!";
	}
	
	mysqli_close($conn);
?>
