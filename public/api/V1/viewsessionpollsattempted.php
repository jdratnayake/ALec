<?php
	
	require "db.php";
	
	$sessionId = $_GET["session_ID"];
	$userId = $_GET["user_ID"];

	$arr = null;

	$sql = "SELECT question_no, question_type, question FROM session_question WHERE session_id='$sessionId' 
			AND (question_no IN(SELECT question_no FROM session_mcq_attempt WHERE student_id='$userId') 
			OR question_no IN(SELECT question_no FROM session_open_attempt WHERE student_id='$userId'))";

	$result = mysqli_query($conn, $sql);
	
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}


	mysqli_close($conn);
?>
