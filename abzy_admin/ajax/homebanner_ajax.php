<?php
include('../db/dbconnect.php');
 
if (isset($_POST['button'])) 
{
  $button =  strip_tags( trim( $_POST['button'] ) );
  
	if($button == 'save')
	{

	if($_FILES["uploadFile"]["name"])
	{

		$targetDir = "../upload/homebanner/";
		
		 	$filename = basename($_FILES["uploadFile"]["name"]);
			$targetFilePath = $targetDir . $filename;
			 
			$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
			 
			$allowTypes = array('jpg','png','jpeg');
	 		if(move_uploaded_file($_FILES["uploadFile"]["tmp_name"], $targetFilePath)  )
				{
				 	$sql = "INSERT INTO home_banner  (url , created) VALUES (  '$filename'  , '".date('d-m-Y')."')";
				}
				else
				{
					$output = json_encode(array('type' => 'error', 'msg' => 'File could not upload'));
					die($output);
				}
		
		
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
  }
	if($button == 'update')
	{
		
		$targetDir = "../upload/homebanner/";
		 
		 	$thumbnil = basename($_FILES["uploadFile"]["name"]);
		 	$targetFilePath1 = $targetDir . $thumbnil;
		 	if (isset($_POST['uploadFile'])) 
			{
				if ($_POST['uploadFile'] !='') 
				{
				 $sql = "Update home_banner set url = '".$_POST['uploadFile']."' , updated = '".date('d-m-Y')."' where id = '".$_POST['editid']."' ";
				}
			}
			else
			{
			$uploadFile = basename($_FILES["uploadFile"]["name"]);
			 
			$targetFilePath = $targetDir . $uploadFile;
			 
			$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
			 
			$allowTypes = array('jpg','png','jpeg');
	 		if(move_uploaded_file($_FILES["uploadFile"]["tmp_name"], $targetFilePath)  )
				{

	   			$sql = "Update home_banner set url = '$uploadFile' , updated = '".date('d-m-Y')."' where id = '".$_POST['editid']."' ";
				}
				else
				{
					$output = json_encode(array('type' => 'error', 'msg' => 'File could not upload'));
					die($output);
				}
					 
			}

			$run = mysqli_query($conn, $sql) ;
		
		if($run)
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
	if($button == 'deleteImg')
	{

		   $query = "update  home_banner set url = '' WHERE id=".$_POST['id'];
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
	

	if($button == 'deletehomebanner')
	{
		   $sql = "Delete from home_banner where id = '".$_POST['delid']."' ";
		 
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


}

?>