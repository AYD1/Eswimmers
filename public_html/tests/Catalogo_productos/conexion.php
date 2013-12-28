<?php
$dbhost="localhost";
$dbusuario="root";
$dbpassword="";
$db="eswimmers_db";
$con = mysql_connect($dbhost, $dbusuario, $dbpassword);
mysql_select_db($db, $con);
?>