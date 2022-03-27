<?php
	
	require "db.php";
	
	$topic_ID = $_POST["topic_ID"];
	$reply = $_POST["reply"];
	$user_ID = $_POST["user_ID"];
	$randomStatus = $_POST["rst"];
	
	$sql = "INSERT INTO forum_reply (topic_id, reply_id, reply, post_time, user_id, random_status) 
			VALUES ('$topic_ID', DEFAULT , '$reply', NOW(), '$user_ID', '$randomStatus');";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		$sqls = "SELECT reply_id FROM forum_reply ORDER BY reply_id DESC LIMIT 1";
		$results = mysqli_query($conn, $sqls);
		
		if($results){
			$row = mysqli_fetch_assoc($results);
			$reply_ID = $row['reply_id'];
			
			$sqla = "UPDATE forum_topic SET last_reply_id='$reply_ID', updated_time=NOW()
					WHERE topic_id='$topic_ID'";
			$resulta = mysqli_query($conn, $sqla);
			
			if($resulta){
				echo "Success";
			}
		}
	}
	else{
		echo "Error Creating The Topic!";
	}
	
	mysqli_close($conn);
?>