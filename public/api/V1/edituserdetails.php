 <?php
 
	require "db.php";
 
	$user_id = $_POST["user_ID"];
	$fName = $_POST["fName"];
	$lName = $_POST["lName"];
	$tp = $_POST["tp"];

    //Update user data
	$query = "UPDATE user SET first_name='$fName', last_name='$lName', tele='$tp'
              WHERE user_id='$user_id'";

    $result = mysqli_query($conn, $query);

	if($result){
		echo "Success";
	}
	
?>