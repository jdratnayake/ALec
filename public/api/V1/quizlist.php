<?php
	
	require "db.php";
	
	$topic_ID = $_GET["topic_ID"];
	$type = $_GET["type"];
	$sql = '';
	
	if($type == 'Draft'){
		$sql = "SELECT quiz_id, quiz_name FROM quiz WHERE topic_id='$topic_ID' AND status='draft';";
	}
	else if($type == 'Create'){
		$sql = "SELECT quiz_id, quiz_name FROM quiz WHERE topic_id='$topic_ID' AND status!='draft';";
	}
	else if($type == 'QuizD'){
		$sql = "SELECT quiz_name, create_date, duration, COUNT(quiz_question.quiz_id) AS count FROM quiz 
				INNER JOIN quiz_question ON quiz.quiz_id=quiz_question.quiz_id 
				WHERE quiz.quiz_id='$topic_ID';";
	}
	
	if($sql){
	
		$result = mysqli_query($conn, $sql);
		
		if($result){
			while($row = mysqli_fetch_assoc($result)){
				$arr[] = $row;
			}
			print(json_encode($arr));
		}
	}
	
	mysqli_close($conn);
?>
