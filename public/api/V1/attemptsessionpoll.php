<?php
	
	require "db.php";
	
	$user_id = $_POST["user_ID"];
	$question_no = $_POST["question_id"];
	$ans = $_POST["ans"];
	$f = $_POST["f"];
	
	$sql = null;
	
	if($f=='open'){
		$sql = "INSERT INTO session_open_attempt (attempt_no, student_id, question_no, answer, attempt_time) 
				VALUES (DEFAULT , '$user_id', '$question_no', '$ans', NOW());";
	}
	else if($f=='mcq'){
		//to get choice id
		$query = "SELECT choice_id FROM session_answer WHERE question_no='$question_no' AND choice_name='$ans' LIMIT 1";
		$rslt = mysqli_query($conn, $query);
		$choice_id = mysqli_fetch_assoc($rslt)["choice_id"];
		
		if($choice_id){
			$sql = "INSERT INTO session_mcq_attempt (student_id, question_no, choice_id, attempt_time) 
					VALUES ('$user_id', '$question_no', '$choice_id', NOW());";
		}
	}
	
	$result = mysqli_query($conn, $sql);
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error";
	}
	
	mysqli_close($conn);
?>