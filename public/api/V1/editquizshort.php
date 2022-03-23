<?php
	
	require "db.php";
	
	$question_no = $_POST["quiz_ID"];
	$question = $_POST["question"];
	$question_type = $_POST["question_type"];
	$answer = $_POST["answer"];
	$point = $_POST["point"];
	$successRate = "0";

	$sql = "UPDATE quiz_question SET question = '$question' WHERE question_no = '$question_no';";
	$result = mysqli_query($conn, $sql);
	
	if($result)
	{	
		$sqlc = "UPDATE question_choice SET choice_name = '$answer' WHERE question_no = '$question_no';";
		$resultc = mysqli_query($conn, $sqlc);
		
		if($resultc)
		{
			echo "Success";
		}
		
	}
	else
	{
		echo "Error";
	}
	
	mysqli_close($conn);
?>
