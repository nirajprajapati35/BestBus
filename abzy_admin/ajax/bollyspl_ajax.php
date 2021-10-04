<?php
include('../db/dbconnect.php');
 
if (isset($_POST['button'])) 
{
  $button =  strip_tags( trim( $_POST['button'] ) );
 
  
	if($button == 'save')
	{
if(count($_FILES["uploadFile"]["name"]) > 0)
{
	 
		$targetDir = "../upload/bollywood-spl/";
		$date =  strip_tags( trim( $_POST['dob'] ) );
		$filename = basename($_FILES["uploadFile"]["name"]);
		
		 $name =  date("d-m-Y", strtotime($date)).'_'.$filename;
		 $ename =   $_POST['name']  ;
		 $mobile =   $_POST['mobile']  ;
		 $aadhar =   $_POST['aadhar']  ;
		 $pan =   $_POST['pan']  ;
		 $dob =   $_POST['dob']  ;
		 $address =   $_POST['address']  ;
		 $license =   $_POST['license']  ;
		 $expiry =   $_POST['expiry']  ;
		 $account =   $_POST['account']  ;
		 $ifsc =   $_POST['ifsc']  ;
	 
		$targetFilePath = $targetDir . $name;
		 
		$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
		 
		$allowTypes = array('jpg','png','jpeg');
 
 		 
			if(move_uploaded_file($_FILES["uploadFile"]["tmp_name"], $targetFilePath)  )
			{

				 $sql = "INSERT INTO bollywood_spl  ( image , name , mobile , aadhar , pan , dob , address , license , expiry , account , ifsc , created) VALUES ('$name' ,'$ename' , '$mobile' , '$aadhar' , '$pan' , '$dob' , '$address' , '$license' , '$expiry' , '$account' , '$ifsc' , '".date('d-m-Y')."')";
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
		 
		$targetDir = "../upload/bollywood-spl/";
		$ename =   $_POST['name']  ;
		 $mobile =   $_POST['mobile']  ;
		 $aadhar =   $_POST['aadhar']  ;
		 $pan =   $_POST['pan']  ;
		 $dob =   $_POST['dob']  ;
		 $address =   $_POST['address']  ;
		 $license =   $_POST['license']  ;
		 $expiry =   $_POST['expiry']  ;
		 $account =   $_POST['account']  ;
		 $ifsc =   $_POST['ifsc']  ;
		if (isset($_POST['uploadFile'])) 
		{
			if ($_POST['uploadFile'] !='') 
			{
			 $sql = "Update bollywood_spl set image = '".$_POST['uploadFile']."' , name = '$ename' , mobile = '$mobile' , aadhar = '$aadhar' , pan = '$pan' , dob = '$dob' , address = '$address' , license = '$license' , expiry = '$expiry' , account = '$account' , ifsc = '$ifsc' , updated = '".date('d-m-Y')."' where id = '".$_POST['editid']."' ";
			}
		}
		else
		{
		$uploadFile = basename($_FILES["uploadFile"]["name"]);
		 $name =  date('d-m-Y').'_'.$uploadFile;
		$targetFilePath = $targetDir . $name;

		$ename =   $_POST['name']  ;
		 $mobile =   $_POST['mobile']  ;
		 $aadhar =   $_POST['aadhar']  ;
		 $pan =   $_POST['pan']  ;
		 $dob =   $_POST['dob']  ;
		 $address =   $_POST['address']  ;
		 $license =   $_POST['license']  ;
		 $expiry =   $_POST['expiry']  ;
		 $account =   $_POST['account']  ;
		 $ifsc =   $_POST['ifsc']  ;
		 
		$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
		 
		$allowTypes = array('jpg','png','jpeg');
 
			 
					if(move_uploaded_file($_FILES["uploadFile"]["tmp_name"], $targetFilePath)  )
					{

   $sql = "Update bollywood_spl set image = '$name' , name = '$ename' , mobile = '$mobile' , aadhar = '$aadhar' , pan = '$pan' , dob = '$dob' , address = '$address' , license = '$license' , expiry = '$expiry' , account = '$account' , ifsc = '$ifsc' , updated = '".date('d-m-Y')."' where id = '".$_POST['editid']."' ";
					}
					else
					{
						$output = json_encode(array('type' => 'error', 'msg' => 'File could not upload'));
						die($output);
					}
				 
		}

		 
		if(mysqli_query($conn, $sql))
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
		   $query = "update  bollywood_spl set image = '' WHERE id=".$_POST['id'];
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
 
 

	if($button == 'deletegallery')
	{
		   $sql = "Delete from bollywood_spl where id = '".$_POST['delid']."' ";
		 
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