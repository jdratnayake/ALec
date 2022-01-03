<?php

// $query = "INSERT INTO notification(notification_type, subject, description, url, date) 
// 		VALUES('1', '$message', '$courseName', '$studentLink', '$postTime')";

require "db.php";

$reply_id = $_POST["reply_id"];
$lec_id = $_POST["lecturer_ID"];
$flag = $_POST["flag"];

if ($flag == "0") {
	$sql = "DELETE FROM forum_reply_points WHERE lecturer_id='$lec_id' AND reply_id='$reply_id'";
	$result = mysqli_query($conn, $sql);
} else if ($flag == "1") {
	$sql = "INSERT INTO forum_reply_points(lecturer_id, reply_id, time) VALUES('$lec_id', '$reply_id', NOW())";
	$result = mysqli_query($conn, $sql);

	$sql = "SELECT course_name FROM forum_reply INNER JOIN forum_topic ON forum_topic.topic_id=forum_reply.topic_id INNER JOIN forum ON
	        forum.forum_id=forum_topic.forum_Id INNER JOIN course ON forum.course_Id=course.course_Id WHERE reply_id='$reply_id'";
	$result2 = mysqli_query($conn, $sql);
	//course name
	$courseName = mysqli_fetch_assoc($result2)["course_name"];

	$sql = "SELECT time FROM forum_reply_points WHERE lecturer_id='$lec_id' AND reply_id='$reply_id'";
	$result2 = mysqli_query($conn, $sql);
	//post time
	$postTime = mysqli_fetch_assoc($result2)["time"];

	$sql = "SELECT CONCAT(first_name, ' ', last_name) AS name FROM user WHERE user_id='$lec_id'";
	$result2 = mysqli_query($conn, $sql);
	//username
	$userName = mysqli_fetch_assoc($result2)["name"];
	$message = "You received points from " . $userName;

	//stuent link
	$studentLink = BASEURL . "/studentForumTopicDiscussion/index/{$reply_id}";

	//write notification
	$sql = "INSERT INTO notification(notification_type, subject, description, url, date) VALUES('3', '$message', '$courseName', '$studentLink', '$postTime')";
	mysqli_query($conn, $sql);

	$sql = "SELECT notification_id FROM notification ORDER BY notification_id DESC LIMIT 1";
	$result2 = mysqli_query($conn, $sql);
	$notificationId = mysqli_fetch_assoc($result2)["notification_id"];

	$sql = "SELECT user_id FROM forum_reply WHERE reply_id='$reply_id'";
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
