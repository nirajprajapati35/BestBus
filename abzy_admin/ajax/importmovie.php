<?php 
include('../db/dbconnect.php');
 $count = 0 ;$lines = 0;
  

 $file = fopen($_FILES['uploadFile']['tmp_name'],"r");
 $array =  array();
 $succsss = '';
while (($data = fgetcsv($file, 1000, ",")) !== FALSE) 
{  
  $lines++;
  if($lines > 1)
  {
          if ($data[0]!='' && $data[1]!='' || $data[2]!='' || $data[3]!='' || $data[4]!='' || $data[5]!='' || $data[6]!='' || $data[7]!=''  ) 
          {
              $dates = explode(" ", $data[0]);  
                $moviedate  = $dates[0];
              $starttime  = $data[1];
              $endtime  = $data[2];
              $slot_dur  = $data[3];
              $fct  = $data[4];
              $movie_dur  = $data[5];
              $movie_name  = $data[6];
              $star_cast  = $data[7];
              $movie_code  = $data[8];
               
  $sql = 'select * from movie_master where movie_code = "'.$data[8].'" ';
$res = mysqli_query($conn, $sql) or die("Error: ".mysqli_error($conn));
$rowcount=mysqli_num_rows($res);   
if ($rowcount > 0) 
{
       if (($data[1] >= '23:01:00' && $data[1] <= '23:59:00') && $data[3] >= '1:00:00'  ) 
                {
                   
                  $prevdate = date("Y-m-d", strtotime("$moviedate - 1 day"));
                  $startdate  = $prevdate.' '.$starttime  ;
                  $enddate  = date("Y-m-d", strtotime("$prevdate + 1 day")).' '.$endtime  ;
                  ///$moviedate  = $prevdate;
                }
                else
                {
                  $startdate  = date("Y-m-d", strtotime($moviedate)).' '.$starttime  ;
                  $enddate  = date("Y-m-d", strtotime($moviedate)).' '.$endtime  ;
                }
              
//echo $startdate  ."--". $enddate ."<br>";
                 $insert = "insert into movie_shows (movie_date , movie_code ,  start_time , end_time  , slot_duration , FCT , movie_dur , startdate , enddate , movie_title , star_cast ) values ('$moviedate' , '$movie_code' ,  '$starttime' , '$endtime' , '$slot_dur' , '$fct' ,  '$movie_dur' , '$startdate' , '$enddate' , '$movie_name' , '$star_cast')";  

                  $res = mysqli_query($conn, $insert) or die("Error: ".mysqli_error($conn));  
}            
                
             
          }
       
      
     
         
  }
 $succsss = 1 ; 
}
 
 if ($succsss == 1) 
{
$output = json_encode(array('type' => 'success', 'msg' => 'successfully Updated cost master File')); 
die($output); 
}
if ($count > 0) 
{
  $output = json_encode(array('type' => 'error', 'msg' => 'This model code not presnt in bike master you have to add ' ,  'code' => '$array', 'count' => $count )); 
  die($output); 
}  
?>