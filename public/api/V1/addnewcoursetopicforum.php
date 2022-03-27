<?php
	
	require "db.php";
	
	$subject = $_POST["subject"];
	$question = $_POST["question"];
	$forum_ID = $_POST["forum_ID"];
	$user_ID = $_POST["user_ID"];
	$randomStatus = $_POST["rst"];
	
	$sql = "INSERT INTO forum_topic (topic_id, subject, question, post_time, forum_Id, user_id, random_status, last_reply_id, updated_time) 
			VALUES (DEFAULT , '$subject', '$question', NOW(), '$forum_ID', '$user_ID', '$randomStatus', NULL, NOW());";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error Creating The Topic!";
	}
	
	mysqli_close($conn);
?>
