<?php
	
	require "db.php";
	
	$quiz_Id = $_GET["quiz_ID"];
	
	$sql = "SELECT 1 AS type, NULL AS id, NULL AS question, COUNT(question_no) AS count FROM `quiz_question` 
			WHERE quiz_id='$quiz_Id' UNION (SELECT 2 AS type, quiz_question.question_no, question, COUNT(choice_id) AS count FROM quiz_question 
			INNER JOIN question_choice ON quiz_question.question_no=question_choice.question_no 
			WHERE quiz_question.quiz_id='$quiz_Id' GROUP BY quiz_question.question_no ORDER BY quiz_question.question_no) 
			UNION (SELECT 3 AS type, choice_id, choice_name, points FROM question_choice WHERE quiz_id='$quiz_Id' ORDER BY question_no, choice_id)";
	
	$result = mysqli_query($conn, $sql);
	
	if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}


	mysqli_close($conn);
?>
