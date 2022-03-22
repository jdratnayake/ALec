
<?php

	require "db.php";

	$ques_mo = $_GET["question_no"];

	$sql = "SELECT question_type FROM quiz_question WHERE question_no=$ques_mo;";

	$result = mysqli_query($conn, $sql);


	if($result){
		$row = mysqli_fetch_assoc($result);
		echo $row['question_type'];	
	}
	
	mysqli_close($conn);

?>