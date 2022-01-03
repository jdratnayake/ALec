
<?php

	require "db.php";

	$reply_id=$_GET["reply_id"];
	$lecturer_id=$_GET["lecturer_ID"];

	$sql="SELECT time FROM forum_reply_points WHERE reply_id='$reply_id' AND lecturer_id=$lecturer_id;";

	$result = mysqli_query($conn, $sql);


	if($result){
		$row = mysqli_fetch_assoc($result);
		if($row['time']){
			echo "point";
		}
	}
	
	mysqli_close($conn);

?>