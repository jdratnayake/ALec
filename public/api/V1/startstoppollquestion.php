
<?php

	require "db.php";

	$question_no = $_GET["question_id"];
	$session_id = $_GET["session_id"];

	$sql = "SELECT active_question_id FROM session WHERE session_id=$session_id;";

	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($result);
	
	
	if($row['active_question_id']){
		if(str_replace('"', '', $question_no)==$row['active_question_id']){
			$sqlf = "UPDATE session_question SET status = 'F' WHERE question_no = $question_no;";
			$resultf = mysqli_query($conn, $sqlf);
			if($resultf){
				echo "Question Disabled";
			}
			else{echo "Error";}
		}
		else{
			$qu_id = $row['active_question_id'];
			$sqlf = "UPDATE session_question SET status = 'F' WHERE question_no = $qu_id;";
			$resultf = mysqli_query($conn, $sqlf);
			$sqlt = "UPDATE session_question SET status = 'T' WHERE question_no = $question_no;";
			$resultt = mysqli_query($conn, $sqlt);
			
			if($resultt){
				echo "Question Started";
			}
			else{echo "Error";}
		}	
	}
	else{
		$sqlt = "UPDATE session_question SET status = 'T' WHERE question_no = $question_no;";
		$resultt = mysqli_query($conn, $sqlt);
		if($resultt){
			echo "Question Started";
		}
		else{echo "Error";}
	}
	
	mysqli_close($conn);

?>