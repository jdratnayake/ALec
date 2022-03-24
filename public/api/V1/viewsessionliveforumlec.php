<?php
	
	require "db.php";
	
	$sessionId = $_GET["session_ID"];
	$f = $_GET["f"];

	$arr = null;

	if($f=="1"){
		$sql = "SELECT session_forum_question.question_id, session_forum_question.student_id, 
			question, points, TIME_FORMAT(post_time, '%h.%i %p') AS post_time, random_status, resolved_status, 
			CONCAT(first_name, ' ', last_name) AS name FROM session_forum_question 
			INNER JOIN user ON student_id=user.user_id INNER JOIN student ON student_id=student.user_id 
			WHERE session_id= $sessionId ORDER BY resolved_status ASC, points DESC, post_time";
	}
	else{
		$sql = "SELECT session_forum_question.question_id, session_forum_question.student_id, 
			question, points, TIME_FORMAT(post_time, '%h.%i %p') AS post_time, random_status, resolved_status, 
			CONCAT(first_name, ' ', last_name) AS name FROM session_forum_question 
			INNER JOIN user ON student_id=user.user_id INNER JOIN student ON student_id=student.user_id 
			WHERE session_id= $sessionId AND resolved_status='0' ORDER BY resolved_status ASC, points DESC, post_time";
	}
	$result = mysqli_query($conn, $sql);
	
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}


	mysqli_close($conn);
?>
