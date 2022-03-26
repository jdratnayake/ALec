
<?php

	require "db.php";

	$question_no = $_GET["question_id"];
	$session_id = $_GET["session_id"];

	$sql = "SELECT status FROM session_question WHERE question_no=$question_no;";

	$result = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($result);
	
	//$st = $row['status'];
	//echo $st;
	//str_replace('"', '', $st)
	
	if($row['status']){
		if($row['status'] == 'F'){
			$sqlf = "UPDATE session_question SET status='F' WHERE session_id= $session_id";
            mysqli_query($conn, $sqlf);

            $sqlf = "UPDATE session_question SET status='T', published_time=NOW() WHERE session_id= $session_id AND question_no= $question_no";
			$resultf = mysqli_query($conn, $sqlf);
			
			if($resultf){
				echo "Question Enabled";
			}
			else{echo "Error";}
		}
		else if($row['status'] == 'T'){
			$sqlt = "UPDATE session_question SET status='F', published_time=NULL WHERE session_id= $session_id AND question_no= $question_no";
			$resultt = mysqli_query($conn, $sqlt);
			//echo $sqlt;
			if($resultt){
				echo "Question Disabled";
			}
			else{echo "Error";}
		}	
	}
	else{
		echo "Error";
	}
	
	mysqli_close($conn);

?>