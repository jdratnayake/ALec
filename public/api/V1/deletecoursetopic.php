<?php
	
	require "db.php";
	
	$topic_ID = $_GET["topic_ID"];
	
	$sql = "DELETE FROM course_topic WHERE topic_id='$topic_ID';";
	
	
	if(mysqli_query($conn, $sql)){
		echo "Success";
	}
	else{
		echo "Error Deleting the Topic..!";
	}
	
	mysqli_close($conn);
?>
