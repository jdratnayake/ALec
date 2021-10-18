<?php
	
	require "db.php";
	
	$user_ID = $_GET["user_ID"];
	$user_Type = $_GET["user_Type"];
	$sql = '';
	
	if($user_Type=='stu'){
		$sql = "SELECT course.course_id, course_name FROM course 
				INNER JOIN course_registration_stu ON course.course_id=course_registration_stu.course_id 
				WHERE student_id='$user_ID';";
	}
	else if($user_Type=='lec'){
		$sql = "SELECT course.course_id, course_name FROM course 
				INNER JOIN course_registration_lec ON course.course_id=course_registration_lec.course_id 
				WHERE lecturer_id='$user_ID';";		
	}
	
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
