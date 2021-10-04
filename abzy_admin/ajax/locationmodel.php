<?php
include('../db/dbconnect.php');
 
if (isset($_POST['button'])) 
{
 
	 
	$button =  strip_tags( trim( $_POST['button'] ) );
	if($button == 'save')
	{
		$location =  strip_tags( trim( $_POST['location'] ) );
		$manager =  strip_tags( trim( $_POST['manager'] ) );
		$phone =  strip_tags( trim( $_POST['phone'] ) );
		 $sql = "INSERT INTO location (  location , name , phone ,  status ) VALUES ('$location' , '$manager' , '$phone' , '1')";

				
			 
		  
		if(mysqli_query($conn, $sql))
			{
				$output = json_encode(array('type' => 'success', 'Id' => mysqli_insert_id($conn)));
				die($output);
			} 
		else
			{
				$output = json_encode(array('type' => 'error', 'msg' => mysqli_error($conn)));
				die($output); 
			}

	}
	

////////////////////////////////////////// *** update data ***  ////////////////////////////////////////////
	if($button == 'update')
	{
	 
		$location = strip_tags(trim( $_POST['location']));
		$manager = strip_tags(trim( $_POST['manager']));
		$phone = strip_tags(trim( $_POST['phone']));
		$sql = "Update location set location = '$location'  , name  = '$manager' , phone  = '$phone'  , updated_date = '".date('d-m-Y')."'    where lid = '".$_POST['editid']."' "; 
		 
		if(mysqli_query($conn, $sql))
			{
				$output = json_encode(array('type' => 'update', 'Id' => mysqli_insert_id($conn)));
				die($output);
			} 
		else
			{
				$output = json_encode(array('type' => 'error', 'msg' => mysqli_error($conn)));
				die($output); 
			}
		
		 
	}
	if($button == 'delete')
	{
		 $sql = "Delete from location where lid = '".$_POST['delid']."' ";
			if(mysqli_query($conn, $sql))
			{
				$output = json_encode(array('type' => 'delete', 'Id' => mysqli_insert_id($conn)));
				die($output);
			} 
		else
			{
				$output = json_encode(array('type' => 'error', 'msg' => mysqli_error($conn)));
				die($output); 
			}
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