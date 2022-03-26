<?php
	
	require "db.php";
	
	$quiz_Id = $_GET["quiz_ID"];
	
	$sql = "SELECT choice_id, choice_name, points FROM question_choice WHERE quiz_id='$quiz_Id' ORDER BY question_no, choice_id;";
	
	$result = mysqli_query($conn, $sql);
	
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}


	mysqli_close($conn);
?>
