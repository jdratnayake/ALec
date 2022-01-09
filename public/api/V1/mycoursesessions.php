<?php
	
	require "db.php";
	
	$user_ID = $_GET["user_ID"];
	$arr = null;
	$sql = "SELECT session.session_id, session_name, course.course_id, course_name FROM session 
			INNER JOIN course ON session.course_id=course.course_id WHERE status='T' AND course.course_id 
			IN(SELECT course_id FROM course_registration_stu WHERE student_id='$user_ID');";
	
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
