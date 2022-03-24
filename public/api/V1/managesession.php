
<?php

	require "db.php";

	$ques_mo = $_GET["session_id"];

	$sql = "SELECT status FROM session WHERE session_id=$ques_mo;";

	$result = mysqli_query($conn, $sql);


	if($result){
		$row = mysqli_fetch_assoc($result);
		echo $row['status'];	
	}
	
	mysqli_close($conn);

?>