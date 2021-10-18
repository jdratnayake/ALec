<?php
	
	require "db.php";
	
	$topic_ID = $_GET["topic_ID"];
	
	$sql = "SELECT quiz_id, quiz_name FROM quiz WHERE topic_id='$topic_ID' AND status!='draft';";
	$result = mysqli_query($conn, $sql);
	
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	mysqli_close($conn);
?>
