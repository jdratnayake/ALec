<?php
	
	require "db.php";
	
	$course_id = $_POST["course_ID"];
	$lecturer_id = $_POST["lecturer_ID"];
	$topic_name = $_POST["topic_Name"];
	$topic_descrip = $_POST["topic_Descrip"];
	
	$sql = "INSERT INTO course_topic (topic_id, course_id, lecturer_id, topic_name, topic_description) VALUES (DEFAULT , '$course_id', '$lecturer_id', '$topic_name', '$topic_descrip');";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error Creating The Topic!";
	}
	
	mysqli_close($conn);
?>
