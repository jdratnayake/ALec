<?php
	
	require "db.php";
	
	$user_Id = $_POST["user_Id"];
	$notification_Id = $_POST["notification_Id"];

	$sql = "UPDATE notification_user SET notification_status_mobile='T' 
			WHERE user_id='$user_Id' AND notification_id='$notification_Id';";

	$result = mysqli_query($conn, $sql);
	
	mysqli_close($conn);

?>
