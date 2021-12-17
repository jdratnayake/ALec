<?php
	
	require "db.php";
	
	$topic_id = $_POST["topic_ID"];
	$lec_id = $_POST["lecturer_ID"];
	$flag = $_POST["flag"];
	
	if ($flag == "0") {
        $sql = "DELETE FROM forum_topic_points WHERE lecturer_id='$lec_id' AND topic_id='$topic_id'";
    }else if ($flag == "1") {
        $sql = "INSERT INTO forum_topic_points(lecturer_id, topic_id, time) VALUES('$lec_id', '$topic_id', NOW())";
		
		$query = "INSERT INTO notification(notification_type, subject, description, url, date) 
				VALUES('1', '$message', '$courseName', '$studentLink', '$postTime')";
    }
	
	$result = mysqli_query($conn, $sql);
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error";
	}
	
	mysqli_close($conn);
?>
