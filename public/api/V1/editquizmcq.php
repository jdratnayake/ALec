<?php
	
	require "db.php";
	
	$answer = [];
	$point = [];
	
	$quiz_ID = $_POST["quiz_ID"];
	$question_no = $_POST["question_no"];
	$question = $_POST["question"];
	$question_type = $_POST["question_type"];
	$answer[0] = $_POST["ans1"];
	$answer[1] = $_POST["ans2"];
	$answer[2] = $_POST["ans3"];
	$answer[3] = $_POST["ans4"];
	$answer[4] = $_POST["ans5"];
	$point[0] = $_POST["pnt1"];
	$point[1] = $_POST["pnt2"];
	$point[2] = $_POST["pnt3"];
	$point[3] = $_POST["pnt4"];
	$point[4] = $_POST["pnt5"];
	$ans_count = $_POST["ans_count"];
	$successRate = "0";
	
	$sqlc = "DELETE FROM quiz_question WHERE question_no=$question_no;";
	$resultc = mysqli_query($conn, $sqlc);


	$sql = "INSERT INTO quiz_question(question_no, quiz_id, question, question_type, success_rate) 
			  VALUES (NULL, '$quiz_ID', '$question', '$question_type', '$successRate');";
	$result = mysqli_query($conn, $sql);
	
	if($result)
	{	
		$sqls = "SELECT question_no FROM quiz_question ORDER BY question_no DESC LIMIT 1";
		$results = mysqli_query($conn, $sqls);
		
		$row = mysqli_fetch_assoc($results);
		$question_no = $row["question_no"];
		
		for($i=0; $i<$ans_count; $i++){
			
			$sqlc = "INSERT INTO question_choice(choice_id, question_no, quiz_id, choice_name, points) 
			  VALUES (NULL, '$question_no', '$quiz_ID', '$answer[$i]', '$point[$i]');";
			  
			$resultc = mysqli_query($conn, $sqlc);
		}
		
		
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
