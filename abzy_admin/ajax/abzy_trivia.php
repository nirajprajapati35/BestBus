<?php
include('../db/dbconnect.php');
 
if (isset($_POST['button'])) 
{
  $button =  strip_tags( trim( $_POST['button'] ) );
  
	if($button == 'save')
	{
 		 $description =  strip_tags( trim( $_POST['description'] ) );
	  
		$sql = "INSERT INTO abzy_trivia  ( description  , created) VALUES (  '$description' , '".date('d-m-Y')."')";
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
	if($button == 'update')
	{
		 $description =  strip_tags( trim( $_POST['description'] ) );
		$query = "update abzy_trivia set description = '".$description."'  , updated  = '".date('d-m-Y')."'  WHERE id=".$_POST['editid'];
		if(mysqli_query($conn, $query))
			{
				$output = json_encode(array('type' => 'update', 'msg' => 'update successgfully'));
				die($output);
			} 
			else
			{
				$output = json_encode(array('type' => 'error', 'msg' => mysqli_error($conn)));
				die($output); 
			}

		
	}
	if($button == 'deletewinnerimg')
	{
		$description =  strip_tags( trim( $_POST['description'] ) );
		   $query = "update abzy_trivia set description = '".$description."' WHERE id=".$_POST['id'];
		if(mysqli_query($conn, $query))
			{
				$output = json_encode(array('type' => 'delete', 'msg' => 'Delete successgfully'));
				die($output);
			} 
			else
			{
				$output = json_encode(array('type' => 'error', 'msg' => mysqli_error($conn)));
				die($output); 
			}
	}
 
	if($button == 'deletewinner')
	{
		   $sql = "Delete from abzy_trivia where id = '".$_POST['delid']."' ";
		 
			if(mysqli_query($conn, $sql))
			{
				$output = json_encode(array('type' => 'delete', 'msg' => 'Delete successgfully'));
				die($output);
			} 
		else
			{
				$output = json_encode(array('type' => 'error', 'msg' => mysqli_error($conn)));
				die($output); 
			}
	}
	if ($button == 'status') 
	{
		   $status =  strip_tags( trim( $_POST['val'] ) );
		 
		 $trivia =  strip_tags( trim( $_POST['trivia'] ) );
		 $query = "update abzy_trivia set status = '0' ";
		 $res = mysqli_query($conn, $query) or die("Error: ".mysqli_error($conn));
		 
		 
	 	   $sql = "update abzy_trivia set status = '".$status."' where id = '".$trivia."' ";
	 	 if(mysqli_query($conn, $sql))
			{
				$output = json_encode(array('type' => 'updatestatus', 'msg' => 'update status successgfully'));
				die($output);
			} 
		else
			{
				$output = json_encode(array('type' => 'error', 'msg' => mysqli_error($conn)));
				die($output); 
			}
	}

	 

}

?>