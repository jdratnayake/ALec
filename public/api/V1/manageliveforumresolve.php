<?php
	require "db.php";



	$questionId = $_POST["question_ID"];
	
	$sql = "SELECT resolved_status FROM session_forum_question WHERE question_id=$questionId;";

	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($result);
	
	if($row['resolved_status'] == "0"){
		 $query = "UPDATE session_forum_question SET resolved_status = '1' WHERE question_id = $questionId;";
    } else {
        $query = "UPDATE session_forum_question SET resolved_status = '0' WHERE question_id = $questionId;";
	}

	$resultl = mysqli_query($conn, $query);
	
	if ($resultl) {
		echo "Success";
	} else {
		echo "Error";
	}

	mysqli_close($conn);
