<?php
$username = $_POST['username'];
$password = $_POST['password'];
$gender = $_POST['gender'];
$email = $_POST['email'];

if (!empty($username) || !empty($password) || !empty($gender) || !empty($email)) {
	# code...
	$host="localhost:8080";
	$username = "root";
	$password="";
	$dbname = "login";

	// create connection
	$conn = new mysqli($host,$username,$password,$dbname);
	if (mysql_connect_error()) {
		die('Connect Error('. mysql_connect_error().')'.mysql_connect_error());
	}else{
		$SELECT = "SELECT email from register where email= ? Limit 1";
		$INSERT =" INSERT INTO register (username,password,gender,email) value (?,?,?,?)";

		 $stmt = $conn -> prepare($SELECT);
		 $stmt -> bind_param("s",$email);
		 $stmt ->execute();
		 $stmt ->bind_result($email);
		 $stmt ->store_result();
		 $rnum =$stmt -> num_row;

		 if ($rnum==0) {
		 	$stmt -> close();

		 	$stmt =$conn->prepare($INSERT);
		 	$stmt ->bind_param("ssss",$username,$password,$dbname);
		 	 $stmt ->execute();
		 	 echo "sucessfully";
		 }else{
		 	echo "aaaaaaaaa";
		 }
		 $stmt -> close();
		 $conn ->close();
	}
}else{
	echo "All field are required";
	die();
}
?>