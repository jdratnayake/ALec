<?php
	
	require "db.php";
	
	$topic_id = $_POST["topic_ID"];
	$lecturer_id = $_POST["lecturer_ID"];
	$quiz_name = $_POST["quiz_Name"];
	$dur = $_POST["dur"];
	$status = "draft";
	//$dur = "{$dur_hr}:{$dur_min}:00";
	
	$sql = "INSERT INTO quiz(quiz_id, quiz_name, status, create_date, published_date, close_date, duration, lecturer_id, topic_id) 
			  VALUES (NULL, '$quiz_name', '$status', NOW(), NULL, NULL, '$dur', '$lecturer_id', '$topic_id');";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		$sqls = "SELECT quiz_id FROM quiz ORDER BY quiz_id DESC LIMIT 1";
		$results = mysqli_query($conn, $sqls);
		
		if($results){
			$row = mysqli_fetch_assoc($results);
			echo $row['quiz_id'];
		}
	}
	else{
		echo "Error";
	}
	
	mysqli_close($conn);
?>
