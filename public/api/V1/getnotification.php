<?php
	
	require "db.php";
	
	$user_Id = $_GET["user_Id"];
	
	$sql = "SELECT * FROM notification_user INNER JOIN notification ON notification_user.notification_id=notification.notification_id 
			WHERE user_id='$user_Id' AND DATE(date)=DATE(NOW()) AND notification_status='F' AND notification_status_mobile='F' ORDER BY date";
	
	$arr = null;
	$result = mysqli_query($conn, $sql);
		
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	
	mysqli_close($conn);
?>
