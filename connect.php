<?php
$First_Name = $_POST['First_Name'];
$Last_Name  = $_POST['Last_Name'];
$birthday = $_POST['birthday'];
$Email = $_POST['Email'];
$STUDENT_ID_NUMBER = $_POST['STUDENT_ID_NUMBER'];
$PASSPORT_ID_NUMBER = $_POST['PASSPORT_ID_NUMBER'];
$Course = $_POST['Course'];
$Mobile_Number = $_POST['Mobile_Number'];
$gender = $_POST['gender'];
$Address = $_POST['Address'];
$City = $_POST['City'];
$Pin_Code = $_POST['Pin_Code'];
$State= $_POST['State'];
$Country= $_POST['Country'];
$Room = $_POST['Room'];
// Database connection
$conn = new mysqli('localhost','root','','test');
if($conn ->connect_error){
	die('Connection Failed : '.$conn ->connect_error);
} else{
	$stmt = $conn->prepare("Insert into registration(First_Name,Last_Name,birthday,Email,STUDENT_ID_NUMBER,PASSPORT_ID_NUMBER,Course,Mobile_Number,gender,Address,City,Pin_Code,State,Country,Room) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
	$stmt->bind_param("ssissssisssisss",$First_Name,$Last_Name,$birthday,$Email,$STUDENT_ID_NUMBER,$PASSPORT_ID_NUMBER,$Course,$Mobile_Number,$gender,$Address,$City,$Pin_Code,$State,$Country,$Room);
	$stmt->execute();
	echo "Registration Successfully...";
	$stmt->close();
	$conn->close();

}
?>