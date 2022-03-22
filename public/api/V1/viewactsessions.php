<?php
	
	require "db.php";
	
	$userId = $_GET["user_ID"];
	$arr = null;

	$query = "SELECT session.session_id, session.session_name, session.course_id, course.course_name, session.create_date
				FROM session LEFT JOIN course ON session.course_id = course.course_id
				WHERE lecturer_id=$userId AND status='T' ORDER BY create_date DESC";

    $result = mysqli_query($conn, $query);
	
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}


	mysqli_close($conn);
?>
