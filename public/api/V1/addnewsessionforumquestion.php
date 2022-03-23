<?php
	
	require "db.php";
	
	$studentId = $_POST["user_ID"];
	$question = $_POST["question"];
	$sessionId = $_POST["session_ID"];
	$randomStatus = $_POST["rst"];
	
	$sql = "INSERT INTO session_forum_question(question, session_id, student_id, random_status) 
			VALUES ('$question', '$sessionId', '$studentId', '$randomStatus')";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error Adding The Question!";
	}
	
	mysqli_close($conn);
?>
