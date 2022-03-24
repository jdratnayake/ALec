 <?php
 
 require "db.php";
 
 $userId = $_GET["userId"];
 $questionSearchValues = " question LIKE '%" . $tagName . "%'";
 $subjectSearchValues = " subject LIKE '%" . $tagName . "%'";
 $replySearchValues = " reply LIKE '%" . $tagName . "%'";

  $sql = "SELECT DISTINCT forum_topic.topic_id, subject, DATE_FORMAT(forum_topic.post_time, '%d %M %Y') AS post_time, 
        CONCAT(first_name, ' ', last_name) AS name, forum_topic.random_status, CONCAT(random_first_name, ' ', random_last_name) AS random_name, user.user_id, user_type, forum_name AS course_name
        FROM forum_topic
        LEFT JOIN forum_reply ON forum_topic.topic_id=forum_reply.topic_id 
        INNER JOIN user ON forum_topic.user_id=user.user_id
        LEFT JOIN student ON student.user_id=user.user_id
        INNER JOIN forum ON forum_topic.forum_Id=forum.forum_Id
        WHERE forum_topic.forum_Id IN(SELECT DISTINCT forum_id FROM course_registration_stu INNER JOIN forum ON course_registration_stu.course_Id=forum.course_Id WHERE student_id='$userId') AND (
        $questionSearchValues OR
        $subjectSearchValues OR
        $replySearchValues)
        ORDER BY updated_time DESC";

        // echo $query;

        $result = mysqli_query($conn, $sql);

        if($result){
		while($row = mysqli_fetch_assoc($result)){
			$arr[] = $row;
		}
		print(json_encode($arr));
	}
	
	mysqli_close($conn);
		?>