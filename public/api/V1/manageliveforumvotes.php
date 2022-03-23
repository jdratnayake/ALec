<?php

// $query = "INSERT INTO notification(notification_type, subject, description, url, date) 
// 		VALUES('1', '$message', '$courseName', '$studentLink', '$postTime')";

	require "db.php";

	$userId = $_POST["user_ID"];
	$questionId = $_POST["question_ID"];

	$query = "SELECT * FROM session_forum_question_points WHERE student_id='$userId' AND question_id='$questionId'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) == 1) {
        $query = "DELETE FROM session_forum_question_points WHERE student_id='$userId' AND question_id='$questionId'";
    } else {
        $query = "INSERT INTO session_forum_question_points(question_id, student_id) VALUES('$questionId', '$userId')";
    }
	$resultl = mysqli_query($conn, $query);
	
	if ($resultl) {
		echo "Success";
	} else {
		echo "Error";
	}


	mysqli_close($conn);
