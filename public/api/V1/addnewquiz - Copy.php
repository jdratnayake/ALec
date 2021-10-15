<?php
	
	require "db.php";
	
	
	$sqls = "SELECT quiz_id FROM quiz ORDER BY quiz_id DESC LIMIT 1";
	$results = mysqli_query($conn, $sqls);
		
	if($results){
		$row = mysqli_fetch_assoc($results);
		echo $row['quiz_id'];
		
	}
	else{
		echo "Error";
	}
	
	mysqli_close($conn);
?>
