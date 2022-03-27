<?php
	
	require "db.php";
	
	$question_no = $_GET["ques_ID"];
	
	$arr = null;
	
	$sql = "SELECT answer, COUNT(answer) AS answer_count FROM session_open_attempt WHERE question_no = $question_no;";
	$result = mysqli_query($conn, $sql);
		
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	
	mysqli_close($conn);
?>
