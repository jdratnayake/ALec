
<?php

	require "db.php";

	$topic_id=$_GET["topic_ID"];
	$user_type=$_GET["user_type"];
	

	$sql="SELECT reply_id, reply, points, user_type, DATE_FORMAT(post_time, '%d %M %Y') AS post_time, CONCAT(first_name, ' ', last_name) AS name FROM forum_reply 
      INNER JOIN user ON forum_reply.user_id=user.user_id WHERE topic_id='$topic_id',user_type='stu';";

	$result = mysqli_query($conn, $sql);


	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	mysqli_close($conn);

?>