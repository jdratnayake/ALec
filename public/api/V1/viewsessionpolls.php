<?php
	
	require "db.php";
	
	$sessionId = $_GET["session_ID"];
	$userId = $_GET["user_ID"];

	$arr = null;

	$query = "SELECT active_question_id, question_type FROM session LEFT JOIN session_question ON active_question_id=question_no 
				WHERE session.session_id='$sessionId'";

    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);

    $questionId = $row["active_question_id"];
    $type = $row["question_type"];

	//Atempt Test
    if ($type == "mcq" || $type == "mcq-tf") {
    	$query = "SELECT * FROM session_mcq_attempt WHERE question_no='$questionId' AND student_id='$userId'";
    } else if ($type == "open") {
        $query = "SELECT * FROM session_open_attempt WHERE question_no='$questionId' AND student_id='$userId'";
    }
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) != 0) {
        $questionId = "";
    }
	
	$sql = "SELECT question_no, question_type, question FROM session_question WHERE question_no='$questionId'";
	
	$result = mysqli_query($conn, $sql);
	
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}


	mysqli_close($conn);
?>
