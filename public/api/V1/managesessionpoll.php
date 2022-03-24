
<?php

	require "db.php";

	$ques_mo = $_GET["question_id"];

	$sql = "SELECT status FROM session_question WHERE question_no=$ques_mo;";

	$result = mysqli_query($conn, $sql);


	if($result){
		$row = mysqli_fetch_assoc($result);
		echo $row['status'];	
	}
	
	mysqli_close($conn);

?>