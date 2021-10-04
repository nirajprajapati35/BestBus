<?php
//$db_host='localhost';
//$db_user='abzy_abzyadmin';
//$db_pass='Abzymovies_2020';
//$db_database = "best_admin";

// $db_host		= 'localhost:3306';
// $db_user		= 'abzyadmin';
// $db_pass		= 'Abzymovies_2020';
// $db_database	= 'best_admin';

$db_host='localhost';
$db_user='root';
$db_pass='';
$db_database = "best_admin";

$conn=mysqli_connect($db_host,$db_user,$db_pass,"$db_database");
if(!$conn){
   die('Could not Connect My Sql:' .mysql_error());
}


?>


