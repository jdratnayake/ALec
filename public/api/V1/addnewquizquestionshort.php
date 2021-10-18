<?php
	
	require "db.php";
	
	$quiz_ID = $_POST["quiz_ID"];
	$question = $_POST["question"];
	$question_type = $_POST["question_type"];
	$answer = $_POST["answer"];
	$point = $_POST["point"];
	$successRate = "0";
	
	$sql = "INSERT INTO quiz_question(question_no, quiz_id, question, question_type, success_rate) 
			  VALUES (NULL, '$quiz_ID', '$question', '$question_type', '$successRate');";
	$result = mysqli_query($conn, $sql);
	
	if($result)
	{
		$sqls = "SELECT question_no FROM quiz_question ORDER BY question_no DESC LIMIT 1";
		$results = mysqli_query($conn, $sqls);
		
		$row = mysqli_fetch_assoc($results);
		$question_no = $row["question_no"];
		
		$sqlc = "INSERT INTO question_choice(choice_id, question_no, quiz_id, choice_name, points) 
			  VALUES (NULL, '$question_no', '$quiz_ID', '$answer', '$point');";
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
