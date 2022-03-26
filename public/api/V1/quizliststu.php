<?php
	
	require "db.php";
	
	$topic_ID = $_GET["topic_ID"];
	$user_ID = $_GET["user_ID"];
	
	$sql = "SELECT quiz.quiz_id, quiz.quiz_name, quiz.duration, quiz_attempt.attempt_time, quiz_attempt.marks 
			FROM quiz INNER JOIN quiz_attempt ON quiz.quiz_id=quiz_attempt.quiz_id 
			WHERE quiz.topic_id = $topic_ID AND quiz_attempt.student_id = $user_ID;";
		
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
