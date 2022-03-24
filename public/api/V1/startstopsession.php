
<?php

	require "db.php";

	$course_id = $_GET["course_id"];
	$session_id = $_GET["session_id"];

	$sql = "SELECT active_session_id FROM course WHERE course_id=$course_id;";

	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($result);
	
	
	if($row['active_session_id']){
		if(str_replace('"', '', $session_id)==$row['active_session_id']){
			$sqlf = "UPDATE session SET status = 'F' WHERE session_id = $session_id;";
			$resultf = mysqli_query($conn, $sqlf);
			if($resultf){
				echo "Session Ended";
			}
			else{echo "Error";}
		}
		else{
			$se_id = $row['active_session_id'];
			$sqlf = "UPDATE session SET status = 'F' WHERE session_id = $se_id;";
			$resultf = mysqli_query($conn, $sqlf);
			$sqlt = "UPDATE session SET status = 'T' WHERE session_id = $session_id;";
			$resultt = mysqli_query($conn, $sqlt);
			
			if($resultt){
				echo "Session Started";
			}
			else{echo "Error";}
		}	
	}
	else{
		$sqlt = "UPDATE session SET status = 'T' WHERE session_id = $session_id;";
		$resultt = mysqli_query($conn, $sqlt);
		if($resultt){
			echo "Session Started";
		}
		else{echo "Error";}
	}
	
	mysqli_close($conn);

?>