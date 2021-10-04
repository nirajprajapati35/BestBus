<?php
include('../db/dbconnect.php');


if (isset($_POST['val'])) 
{

	$val = $_POST['val'];
	$amount = '';

	 
	if (isset($_POST['draft'])) 
	{

		 
		if ($_POST['draft'] == 'sell') 
		{
			$sql = "select l.location , s.mfg_date , s.invoice_date  ,  s.flag ,  s.stock_id  , s.chassis_no ,s.color , s.engine_no ,bmcm.model_name , bmcm.bikemodel_mapping_color_id  ,s.model_name ,s.paymentstatus , bmcm.rto_amt , bmcm.insurance , s.docket_no  ,bmcm.exshowroom  , bmcm.depo_charges  , bmcm.others  , bmcm.dsp  , s.mfg_date from bikemodel_mapping_color_master bmcm inner join stock_csv s on bmcm.bikemodel_mapping_color_id = s.model_name inner join location l on l.lid = s.location   where (s.paymentstatus !=2 and s.paymentstatus !=4) and  s.model_name = '".$val."'   ORDER BY `s`.`mfg_date` ASC ";
		}
	}
	
	else if (isset($_POST['button'] )) 
	{
		$sql = "select l.location , s.mfg_date , s.invoice_date , s.flag ,  s.stock_id  , s.chassis_no ,s.color , s.engine_no ,bmcm.model_name , bmcm.bikemodel_mapping_color_id  ,s.model_name ,s.paymentstatus , bmcm.rto_amt , bmcm.insurance , s.docket_no  , bmcm.exshowroom  , bmcm.depo_charges , bmcm.others  , bmcm.dsp  , s.mfg_date from bikemodel_mapping_color_master bmcm inner join stock_csv s on bmcm.bikemodel_mapping_color_id = s.model_name  join location l on l.lid = s.location where  s.model_name = '".$val."'   ORDER BY `s`.`mfg_date` ASC ";
	}
	else
	{
		$sql = "select l.location , s.mfg_date , s.invoice_date , s.flag ,  s.stock_id  , s.chassis_no ,s.color , s.engine_no ,bmcm.model_name , bmcm.bikemodel_mapping_color_id  ,s.model_name ,s.paymentstatus , bmcm.rto_amt , bmcm.insurance , s.docket_no  , bmcm.exshowroom  , bmcm.depo_charges  , bmcm.others  , bmcm.dsp  , s.mfg_date from bikemodel_mapping_color_master bmcm inner join stock_csv s on bmcm.bikemodel_mapping_color_id = s.model_name  join location l on l.lid = s.location where (s.paymentstatus !=2 and s.paymentstatus !=4) and  s.model_name = '".$val."' and s.flag = 0  ORDER BY `s`.`mfg_date` ASC ";
	}
	 
 
	 /// $sql = "select model_name , stock_id , chassis_no , engine_no ,color from stock_csv where model_name = '".$val."'  ";
       

$res = mysqli_query($conn, $sql) or die("Error: ".mysqli_error($conn));
$count=mysqli_num_rows($res);
	 

$query2 = "select model_name , amount from stock_csv where model_name = '".$val."' " ; 
$res2 = mysqli_query($conn, $query2) or die("Error: ".mysqli_error($conn));
$rowcount2=mysqli_num_rows($res2);
$data2 = mysqli_fetch_assoc($res2);
$amount = str_replace(',' , '', $data2['amount']) ;


	 $table = array();
while($row = mysqli_fetch_array($res)) 
{
      $query = "select * from bikemodel_mapping_color_master where bikemodel_mapping_color_id = '".$row['color']."' " ; 
$res1 = mysqli_query($conn, $query) or die("Error: ".mysqli_error($conn));
$rowcount=mysqli_num_rows($res1);
$data = mysqli_fetch_assoc($res1);
	
 $table[]= array(

        'location' => $row['location'],
        'stock_id' => $row['stock_id'],
        'model_code' => $row['model_name'],
        'chassis_no' => $row['chassis_no'],
        'insurance' => $row['insurance'],
        'rto_amt' => $row['rto_amt'],
        'exshowroom' => $row['exshowroom'],
        'depo_charges' => $row['depo_charges'],
        'rto_amt' => $row['rto_amt'],
        'others' => $row['others'],
        'dsp' => $row['dsp'],
        'engine_no' => $row['engine_no'] ,
        'mfg_date' => $row['mfg_date'] ,
        'docket_no' => $row['docket_no'] ,
        'color' => $data['model_color_name'],
        'price' =>$amount
         
    );
    $bikeprice[] = $amount;
    $rto_amt[] = $row['rto_amt'];
    $insurance[] = $row['insurance'];
    $exshowroom[] = $row['exshowroom'];
    $others[] = $row['others'];
    $dsp[] = $row['dsp'];
    $depo_charges[] = $row['depo_charges'];
}


	$output = json_encode(array('type' => 'success' , 'count' => $count , 'data' => $table  , 'bikeprice' => $bikeprice  , 'rto_amt'=> $rto_amt , 'insurance' => $insurance , 'exshowroom' => $exshowroom , 'depo_charges' => $depo_charges , 'others' => $others , 'dsp' => $dsp   ));
		die($output);
	 
}
 
if (isset($_POST['accessorise'])) 
{
	 $price = '0';
	   
	for ($i=0; $i < $_POST['count']; $i++) 
	{ 
		 
			$id = str_replace(',', ' ' , $_POST['accessorise']);
			 
			  $sql = "select * from accessorise_details where id = '".$id[$i]."' ";
				   
				 $res1 = mysqli_query($conn, $sql) or die("Error: ".mysqli_error($conn));
				 $rowcount=mysqli_num_rows($res1);
				 if ($rowcount>0) 
				 {
				 	 $data = mysqli_fetch_assoc($res1);


					if ($_POST['count'] > 1) 
					{
						   $price+=  $data['price']   ;
					}
					if ($_POST['count'] == 1)
					{
						  ///$price   =  $data['price']  ;
						  $price = $data['price'] ;
					}
 				}
		
	}
		echo $price ;
	   
}

else
{
			$output = json_encode(array('type' => 'error', 'msg' => 'Error22'));
			die($output);
} 
 
 
?>