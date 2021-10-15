<?php
	
	require "db.php";
	
	$course_ID = $_GET["course_ID"];
	
	$sql = "SELECT topic_id, subject, user_id FROM forum_topic WHERE forum_Id=(SELECT forum_Id FROM forum WHERE course_id='$course_ID')";
	$result = mysqli_query($conn, $sql);
		
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	mysqli_close($conn);
?>
