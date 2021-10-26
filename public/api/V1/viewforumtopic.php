<?php
	
	require "db.php";
	
	$course_ID = $_GET["course_ID"];
	
	$sql = "SELECT topic_id, subject, question, CONCAT(first_name, ' ', last_name) AS user_name, DATE_FORMAT(post_time, '%d %M %Y') AS post_time FROM forum_topic 
			INNER JOIN user ON user.user_id=forum_topic.user_id WHERE forum_Id=(SELECT forum_Id FROM forum 
			WHERE course_id='$course_ID') ORDER BY updated_time";
	$result = mysqli_query($conn, $sql);
		
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	mysqli_close($conn);
?>
