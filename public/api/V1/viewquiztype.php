<?php
	
	require "db.php";
	
	$question_no = $_GET["question_no"];
	
	$sql = "SELECT question_type FROM quiz_question WHERE question_no='$question_no';";
	
	$result = mysqli_query($conn, $sql);
	
	if($result){
		$row = mysqli_fetch_assoc($result);
		echo $row['question_type'];
	}


	mysqli_close($conn);
?>
