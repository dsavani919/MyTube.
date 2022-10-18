<?php
$id=$_REQUEST['id'];
$con = mysqli_connect("localhost","root","","mytube");

//include("connection.php");
$query = "delete from users where id = '$id'";
$result = mysqli_query($con,$query);
if($result)
{
    header('location:table.php');
}
?>