<?php
	
	require "db.php";
	
	$question_no = $_GET["ques_ID"];
	
	$sql = "SELECT choice_name FROM session_answer WHERE question_no = $question_no;";
	$result = mysqli_query($conn, $sql);
		
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	
	mysqli_close($conn);
?>
