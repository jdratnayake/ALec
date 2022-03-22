<?php
	
	require "db.php";
	
	$quiz_ID = $_POST["quiz_ID"];
	$pub_date = $_POST["pub_date"];
	$cls_date = $_POST["cls_date"];
	$quiz_dur = $_POST["quiz_dur"];

	$sql = "UPDATE quiz SET published_date='$pub_date', close_date='$cls_date', duration='$quiz_dur' WHERE quiz_id='$quiz_ID'";
	$result = mysqli_query($conn, $sql);
	
	//echo "$sql";
	
	if($result){
		echo "Success";
	}
	else{
		echo "Error";
	}
	
	mysqli_close($conn);
?>
