<html>
<head>hi </head>
<body>
<?php
$host='db';
$user='devuser';
$pass="pass";
$db="testdb";

$con=new mysqli($host,$user,$pass,$db);
if($con->connect_errno)
{
echo 'failed'.$con->connect_error;
}
else
echo 'sucessfull';
?>
</body>
</html>