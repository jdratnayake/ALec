<?php
	
	require "db.php";
	
	$question_no = $_POST["question_ID"];
	
	$sql = "DELETE FROM quiz_question WHERE question_no='$question_no';";
	
	
	if(mysqli_query($conn, $sql)){
		echo "Success";
	}
	else{
		echo "Error Deleting the Topic..!";
	}
	
	mysqli_close($conn);
?>
