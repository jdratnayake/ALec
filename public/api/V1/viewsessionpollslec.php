<?php
	
	require "db.php";
	
	$sessionId = $_GET["session_ID"];

	$arr = null;

	$query = "SELECT * FROM session_question WHERE session_id=$sessionId";
    $result = mysqli_query($conn, $query);
    
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}


	mysqli_close($conn);
?>
