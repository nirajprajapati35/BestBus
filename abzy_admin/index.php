<?php 
session_start();  
if(!$_SESSION['username'])  
{  
   header("Location: login.php"); 
} 
require_once('inc/top.php') ;
$dashboard = 1 ;

$query = "select * from movie_master" ; 
$res = mysqli_query($conn, $query) or die("Error: ".mysqli_error($conn));
$rowcount=mysqli_num_rows($res);
?>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">

<style type="text/css">
  .btn{padding : 5px;}
  table.dataTable.no-footer {  border-bottom: 1px solid #fafafa; }
  table.dataTable thead th, table.dataTable thead td { border-bottom: 1px solid #e3ebf4; }
</style>  
    <!-- END Custom CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

    <!-- navbar-fixed-top-->
    <?php require_once('inc/header.php') ; ?>
    
    

    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <!-- main menu-->
    <div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
      <!-- main menu header-->
      <div class="main-menu-header">
        <input type="text" placeholder="Search" class="menu-search form-control round"/>
      </div>
      <!-- / main menu header-->
      <!-- main menu content-->
      <?php require_once('inc/sidebar.php') ; ?>
      <!-- /main menu content-->
      <!-- main menu footer-->
      <!-- include includes/menu-footer-->
      <!-- main menu footer-->
    </div>
    <!-- / main menu-->

    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="card-header">
    <h4 class="card-title">Best Bus Dashboard</h4>
    <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
        <div class="heading-elements">
          <ul class="list-inline mb-0">
              <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
              <li><a data-action="reload"><i class="icon-reload"></i></a></li>
              <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
              <li><a data-action="close"><i class="icon-cross2"></i></a></li>
          </ul>
      </div>
  </div>
        <div class="content-body"><!-- stats -->

<div class="row">

<div class="card-block  my-gallery" itemscope="" itemtype="#" data-pswp-uid="1">
 
    </div>
    <div class="col-xl-12 col-md-12 col-sm-12">
        <div class="card" style="height: 220px;">
            <div class="card-body">
                <div class="card-block">
                    <h4 class="card-title">Best Bus</h4>
                    
                </div>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                     
                    <div class="carousel-inner" role="listbox">
<?php 
 $query = "select * from box_office" ; 
$res = mysqli_query($conn, $query) or die("Error: ".mysqli_error($conn));
$rowcount=mysqli_num_rows($res);
$x = 1; 
while ($rowss = mysqli_fetch_array($res)) 
{
  if ($x == 1) 
  {  
?>
                        <div class="carousel-item active left">
                            <img src="upload/box-office/<?php echo $rowss['image'] ?>" alt="First slide" style='width: 100%; height: 210px;'>
                        </div>
                         
<?php } else { ?>
            <div class="carousel-item left">
                            <img src="upload/box-office/<?php echo $rowss['image'] ?>" alt="First slide" style='width: 100% ; height:210px;'>
            </div>
<?php }  $x++;} ?>                         
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="icon-prev" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="icon-next" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                
            </div>
        </div>
    </div>
      
</div>
 
 


        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
<?php require_once('inc/footer.php') ; ?>
<script type="text/javascript" src='https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js'></script>
    <script type="text/javascript">
$(document).ready(function () { $('#example').DataTable({  "pageLength": 5}); });


$("#movieimport").validate({
ignore: ":hidden",
rules: 
        {
          uploadFile: { required: true , extension: "xls|csv|xlsx"}
        },
submitHandler: function (form) {
   $.ajax({
    type: "POST",
    url: 'ajax/movieimport.php',
    data:new FormData(form),
    dataType    : 'json',
    contentType: false,
    cache: false,
    processData:false,
    success: function (res) {
      alert(res.type);
    if(res.type == 'success')
                {   

            $('#success').text(res.msg);
                    window.location.href = 'index.php?msg=success&&tab=cost';
                    $('.message').delay(2000).show().fadeOut('slow');
                    setTimeout(function(){
                        $("body").fadeOut(1000,function(){
                           window.location.href = "index.php";
                        })
                    },2000)
                }
                
                else if(res.type == 'error')
                {
                        $('.file_error').text(res.msg);
                }
                 }
             });
             return false; // required to block normal submit since you used ajax
         }
     }); 
    </script>
  </body>
</html>
