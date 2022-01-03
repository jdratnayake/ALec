
<?php

	require "db.php";

	$reply_id=$_GET["reply_id"];

	$sql="SELECT topic_id,reply_id, reply,points, post_time post_time FROM forum_reply WHERE reply_id='reply_id';";

	$result = mysqli_query($conn, $sql);


	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	mysqli_close($conn);

?>