<?php
include('../db/dbconnect.php');
   
  



if (isset($_POST['stockid'])) 
{

	$stockid = $_POST['stockid'];
	$val = $_POST['val'];
	$field = $_POST['field'];
	///$field_val = $_POST['field_val'];
 $data = array();
 	if($field == 'model')
 	{
 		$sql = "select bike_model_code , id from bike_model_master ";

 		 $res2 = mysqli_query($conn, $sql) or die("Error: ".mysqli_error($conn));
			$rowcount2=mysqli_num_rows($res2);
			 while ( $row1 = mysqli_fetch_array($res2)) 
			 {
			 	 
			 	$output = json_encode(array('type' => 'success', 'data' =>$data , 'field' => $field));

			   ///echo  "<option value= '".$row1["id"]."' style= 'background-color: #fff;color: #000;' >".$row1['bike_model_code']."</option>";
			   
			 }
 


 	}
 
	 
		 
		 
		 

	 
	

////////////////////////////////////////// *** update data ***  ////////////////////////////////////////////
	 

}

else
		{
			$output = json_encode(array('type' => 'error', 'msg' => 'Error22'));
			die($output);
		} 
 
 
?>