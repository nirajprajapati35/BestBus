<?php
include('../db/dbconnect.php');
 
if (isset($_POST['login'])) 
{
 
	$username =  strip_tags( trim( $_POST['username'] ) );
	$password =  strip_tags( trim( $_POST['pswd'] ) );
	 
		 
		 $sql = "Select * from user  where username = '$username' and pswd = '$password'  ";
		$res = mysqli_query($conn, $sql) or die("Error: ".mysqli_error($conn));
		$rowcount=mysqli_num_rows($res);
		//$rowcount=mysqli_num_rows($res);
				
			 
		  
		if($rowcount>0)
			{
				$_SESSION['username'] = $username;
				$output = json_encode(array('type' => 'success', 'msg' => 'successfully login'  ));
				die($output);
			} 
		else
			{
				$output = json_encode(array('type' => 'error', 'msg' => mysqli_error($conn)));
				die($output); 
			}

	 
	 

}

else
		{
			$output = json_encode(array('type' => 'error', 'msg' => 'Error22'));
			die($output);
		} 
 
 // $data = array(
	// 	'tokencost'=> $tokencost,
	// 	'gst'=> $gst,
	// 	 'amt' => $amt ,
	// 	'discountcost'=> $discountcost,
		 
	// );
	// echo json_encode($data);
 
?>