<?php 
define('DB_HOST', '127.0.0.1'); 
define('DB_NAME', 'DatabaseName'); 
define('DB_USER','root'); 
define('DB_PASSWORD',''); 

$con=mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysql_error()); 
$db=mysqli_select_db($con,DB_NAME) or die("Failed to connect to MySQL: " . mysql_error()); 
?>
