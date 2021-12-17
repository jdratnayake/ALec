
<?php

	require "db.php";

	$topic_id=$_GET["topic_ID"];
	$lecturer_id=$_GET["lecturer_ID"];

	$sql="SELECT time FROM forum_topic_points WHERE topic_id='$topic_id' AND lecturer_id=$lecturer_id;";

	$result = mysqli_query($conn, $sql);


	if($result){
		$row = mysqli_fetch_assoc($result);
		if($row['time']){
			echo "point";
		}
	}
	
	mysqli_close($conn);

?>