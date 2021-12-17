<?php

// $query = "INSERT INTO notification(notification_type, subject, description, url, date) 
// 		VALUES('1', '$message', '$courseName', '$studentLink', '$postTime')";

require "db.php";

$topic_id = $_POST["topic_ID"];
$lec_id = $_POST["lecturer_ID"];
$flag = $_POST["flag"];

if ($flag == "0") {
	$sql = "DELETE FROM forum_topic_points WHERE lecturer_id='$lec_id' AND topic_id='$topic_id'";
	$result = mysqli_query($conn, $sql);
} else if ($flag == "1") {
	$sql = "INSERT INTO forum_topic_points(lecturer_id, topic_id, time) VALUES('$lec_id', '$topic_id', NOW())";
	$result = mysqli_query($conn, $sql);

	$sql = "SELECT course_name FROM forum_topic INNER JOIN forum ON forum_topic.forum_Id=forum.forum_Id INNER JOIN course ON forum.course_Id=course.course_Id WHERE topic_id='$topic_id'";
	$result2 = mysqli_query($conn, $sql);
	//course name
	$courseName = mysqli_fetch_assoc($result2)["course_name"];

	$sql = "SELECT time FROM forum_topic_points WHERE lecturer_id='$lec_id' AND topic_id='$topic_id'";
	$result2 = mysqli_query($conn, $sql);
	//post time
	$postTime = mysqli_fetch_assoc($result2)["time"];

	$sql = "SELECT CONCAT(first_name, ' ', last_name) AS name FROM user WHERE user_id='$lec_id'";
	$result2 = mysqli_query($conn, $sql);
	//username
	$userName = mysqli_fetch_assoc($result2)["name"];
	$message = "You received points from " . $userName;

	//stuent link
	$studentLink = BASEURL . "/studentForumTopicDiscussion/index/{$topic_id}";

	//write notification
	$sql = "INSERT INTO notification(notification_type, subject, description, url, date) VALUES('3', '$message', '$courseName', '$studentLink', '$postTime')";
	mysqli_query($conn, $sql);

	$sql = "SELECT notification_id FROM notification ORDER BY notification_id DESC LIMIT 1";
	$result2 = mysqli_query($conn, $sql);
	$notificationId = mysqli_fetch_assoc($result2)["notification_id"];

	$sql = "SELECT user_id FROM forum_topic WHERE topic_id='$topicId'";
	$result2 = mysqli_query($conn, $sql);


	$userId = mysqli_fetch_assoc($result2)["user_id"];
	$sql = "INSERT INTO notification_user(user_id, notification_id) VALUES('$userId', '$notificationId')";
	mysqli_query($conn, $sql);
}



if ($result) {
	echo "Success";
} else {
	echo "Error";
}

mysqli_close($conn);
