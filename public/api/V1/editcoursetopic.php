<?php
	
	require "db.php";
	
	$topic_id = $_POST["topic_ID"];
	$topic_name = $_POST["topic_Name"];

	$sql = "UPDATE course_topic SET topic_name='$topic_name' WHERE topic_id='$topic_id';";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error Updating The Topic!";
	}
	
	mysqli_close($conn);
?>
