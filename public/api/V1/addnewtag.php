<?php
	
	require "db.php";
	
	
	$tag_name = $_POST["tag_name"];
	$student_id = $_POST["student_id"];
	
	
	$sql = "INSERT INTO tag(tag_id,tag_name, student_id) VALUES(DEFAULT,'$tag_name', '$student_id')";";
	$result = mysqli_query($conn, $sql);
	
	
	
	mysqli_close($conn);
	?>