
<?php

	require "db.php";

	$reply_id=$_GET["reply_id"];

	$sql="SELECT  reply_id,reply, points, user_type, DATE_FORMAT(post_time, '%d %M %Y') AS post_time, CONCAT(first_name, ' ', last_name) AS name FROM forum_reply 
      INNER JOIN user ON forum_reply.user_id=user.user_id WHERE reply_id='$reply_id';";

	$result = mysqli_query($conn, $sql);


	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	mysqli_close($conn);

?>