<?php
	
	require "db.php";
	
	$course_ID = $_GET["course_ID"];
	
	$sql = "SELECT session_id, session_name FROM session WHERE course_id= $course_ID AND question_status = 'T';";
	
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
