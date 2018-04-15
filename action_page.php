
<?php
$serv_name ="localhost";
$username="root";
$password="";
$dbname = "bookstore";
$username = $_POST['uname'];

$con = new mysqli($serv_name,"root",$password,"");
if($con->connect_error)
{
	die("Connection terminated".$con->connect_error);
}
else
{
	echo'Connection Successful';
}

echo'<br><br>';

$name = $_POST["firstname"];
$email = $_POST["email"];
$telephone= $_POST["Telephone1"];
$regarding = $_POST["Regarding"];
$message = $_POST["message"];

$to_email = 'saksham1234yadav@gmail.com';
$subject = 'Feedback Mail';
$headers = 'From: noreply@bookstore.com';
$txt = 'A feedback from '.$email.' and the feedback is '.$message;
mail($to_email,$subject,$txt,$headers);
header('Location:projectN.php');
?>
