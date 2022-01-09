<?php
	
	require "db.php";
	
	$sessionId = $_GET["session_ID"];
	$userId = $_GET["user_ID"];

	$arr = null;

	$sql = "SELECT session_forum_question.question_id, session_forum_question.student_id, question, points, 
	TIME_FORMAT(post_time, '%h.%i %p') AS post_time, random_status, CONCAT(first_name, ' ', last_name) AS name, 
	CONCAT(random_first_name, ' ', random_last_name) AS random_name, session_forum_question_points.student_id AS vote_status 
	FROM session_forum_question INNER JOIN user ON student_id=user.user_id INNER JOIN student ON student_id=student.user_id 
	LEFT JOIN session_forum_question_points ON session_forum_question.question_id=session_forum_question_points.question_id 
	AND session_forum_question_points.student_id='$userId' WHERE session_id='$sessionId' ORDER BY points DESC, post_time";

	$result = mysqli_query($conn, $sql);
	
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}


	mysqli_close($conn);
?>
