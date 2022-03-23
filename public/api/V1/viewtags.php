<?php
	
	require "db.php";
	
	$student_id = $_GET["student_id"];
	
	$sql = "SELECT tag_id, tag_name,student_id FROM tag WHERE student_id='$student_id';";
			
	$result = mysqli_query($conn, $sql);
		
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	mysqli_close($conn);
?>
