<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.1.3/css/fixedHeader.dataTables.min.css">
<link href="../app-assets/css/bootstrap-datepicker.css" rel="stylesheet" />
 <?php 
session_start();  
if(!$_SESSION['username'])  
{  
   header("Location: ../login.php"); 
} 
  require_once('../inc/top1.php') ; 
  require_once('../inc/header1.php') ;  
 $bollywood_spl = 1;
 $query = "select * from bollywood_spl where id = '".$_GET['editid']."'  " ; 
$res = mysqli_query($conn, $query) or die("Error: ".mysqli_error($conn));
$rowcountnew=mysqli_num_rows($res);
$data = mysqli_fetch_assoc($res);
?>
<style type="text/css">
    .img-wrap {
    position: relative;
    display: inline-block;
    
    font-size: 0;
}
.img-wrap .close {
    position: absolute;
    top: -14px;
    right: -10px;
    z-index: 100;
    background-color: #1d2b36;
    padding: 4px 4px 9px;
    color: #ffffff;
    font-weight: bold;
    cursor: pointer;
    /* opacity: .2; */
    text-align: center;
    font-size: 22px;
    line-height: 10px;
    border-radius: 50%;
}
.img-wrap:hover .close , .close{
    opacity: 1;
}
.pagination>li>a, .pagination>li>span {
    position: relative;
    float: left;
    padding: 6px 12px;
    margin-left: -1px;
    line-height: 1.42857143;
    color: #337ab7;
    text-decoration: none;
    background-color: #fff;
    border: 1px solid #ddd;
}
 
.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover {
    z-index: 3;
    color: #fff;
    cursor: default;
    background-color: #337ab7;
    border-color: #337ab7;
}
 .pagination>li {
    display: inline;
}
.edit , .delete
{
  padding: 2px 11px;
}
.text-highlight {
    padding: 4px 6px;
    display: inline-block;
    width: 100%;
}
.nav.nav-tabs.nav-justified .nav-item {
    border: 1px solid #f6bb42;
}
.nav.nav-tabs.nav-justified .nav-item a.nav-link {
    font-size: 16px;
  }
.nav.nav-tabs.nav-justified .nav-item a.nav-link.active {
    background-color: #f6bb42;color: #fff;
}
.tab-content
{
  border: 1px solid #f6bb42;
  border-top: 1px solid #fff;
}
.nav.nav-tabs .nav-item .nav-link {
    padding: 10px  20px;
    display: block;
}
</style>  

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap.min.css
"> 

    <!-- END Custom CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">
<!-- navbar-fixed-top-->
<!-- ////////////////////////////////////////////////////////////////////////////-->
<!-- main menu-->
<div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
  <!-- main menu header-->
  <div class="main-menu-header">
    <input type="text" placeholder="Search" class="menu-search form-control round"/>
      </div>
      <!-- / main menu header-->
      <!-- main menu content-->
      <?php require_once('../inc/sidebar1.php') ; ?>
      <!-- /main menu content-->
      <!-- main menu footer-->
      <!-- include includes/menu-footer-->
      <!-- main menu footer-->
    </div>
    <!-- / main menu-->

    <div class="app-content content container-fluid">
      <div class="content-wrapper">

        <div class="content-header row">
                <?php 
                if (isset($_GET['msg'])) 
                {
                   ?>

<div class="card bg-teal message">
                <div class="card-body">
                    <div class="card-block" style="padding: 10px 15px;">
                        <div class="media">

                            
<?php  if ($_GET['msg'] == 'success')   
{ ?>  
  <div class="card bg-teal message">
    <div class="card-body">
      <div class="card-block" style="padding: 10px 15px;">
        <div class="media">   


        </div>
       </div>
    </div>
</div>
<?php  } ?>
<?php  if ($_GET['msg'] == 'update')   { ?> <div class="media-body white text-xs-left"> <span> Successfully Updated . </span> </div> <?php  } ?>
<?php  if ($_GET['msg'] == 'delete')   { ?> <div class="media-body white text-xs-left"> <span>  Successfully Deleted . </span> </div><?php  } ?>

                             
                        </div>
                    </div>
                </div>
            </div>
                         <?php   } ?>

</div>

 
<div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">
    <div class="row match-height">
        <div class="col-md-12">

            <div class="card">
                <div class="card-header">
                    <h4 class="card-title" id="basic-layout-form"> Edit Employee Details </h4>
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
<div class="card-body collapse in">
 
 
<div class="card">
    
<div class="card-block">
  <div class="col-md-9" style="padding: 0px;">
      <form class="form" name="gallery" method="post" id="gallery" enctype="multipart/form-data">
          <div class="form-body">
            <div class="row">
 
<div class="col-md-4">
    <div class="form-group">
        <label> Image    </label>

 <?php 
if ($data['image'] != '') 
{
  echo "
<div class='img-wrap'>
    <span class='close delete'  data-file = '".$data['image']."' id='del_".$data['id']."'>&times;</span>
 <input type= 'hidden' id= 'uploadFile' name='uploadFile' value='".$data['image']."'>
  <img src='../upload/bollywood-spl/".$data['image']."' alt= '".$data['image']."' class='img-thumbnail' style='height: 200px; width: 100%;' > </div>" ;
}
else
{ ?>
<div class="input-group">
    <span class="input-group-btn">
        <span class="btn btn-default btn-file">
            <input type="file" id="uploadFile" name="uploadFile" >
            <p class="text-info py-1 mb-0 font-weight-bold">
                          Note: Image Size Specifications Height (198px) and Width(375px).
                        </p>

        </span>
    </span>

</div>

<img id='img-upload'/>
<?php } ?>
 

 </div>
</div>
 
<div class="col-md-4">
           <div class="form-group">
              <label for="name">Enter Name</label>
              <input type="text" name="name" id="name" class="form-control" value="<?php if ($data['name'] != '') {echo $data['name']; }?>"/> 
          </div>
       </div>
          <div class="col-md-4">
           <div class="form-group">
              <label for="mobile">Mobile no.</label>
              <input type="text" name="mobile" id="mobile" class="form-control" value="<?php if ($data['mobile'] != '') {echo $data['mobile']; }?>"/> 
          </div>
         </div>
          <div class="col-md-4">
           <div class="form-group">
              <label for="aadhar">Aadhar No</label>
              <input type="text" name="aadhar" id="aadhar" class="form-control" value="<?php if ($data['aadhar'] != '') {echo $data['aadhar']; }?>"/> 
          </div>
          </div>
          <div class="col-md-4">
           <div class="form-group">
              <label for="pan">Pan Card</label>
              <input type="text" name="pan" id="pan" class="form-control" value="<?php if ($data['pan'] != '') {echo $data['pan']; }?>"/> 
          </div>
         </div>
          <div class="col-md-4">
              <label for="dob">Date of Birth </label>
          <div class="controls">
                  <input class="datepicker form-control" type="text" name="dob" value="<?php if ($data['dob'] != '') {echo $data['dob']; }?>"/>
          </div>
          </div>
          <div class="col-md-4">
           <div class="form-group">
              <label for="address">Address</label>
              <input type="text" name="address" id="address" class="form-control" value="<?php if ($data['address'] != '') {echo $data['address']; }?>"/> 
          </div>
        </div>
         <div class="col-md-4">
           <div class="form-group">
              <label for="license">License No</label>
              <input type="text" name="license" id="license" class="form-control" value="<?php if ($data['license'] != '') {echo $data['license']; }?>"/> 
          </div>
        </div>
         <div class="col-md-4">
              <label for="expiry">Expiry Date</label>
          <div class="controls">
                  <input class="datepicker form-control" type="text" name="expiry"  value="<?php if ($data['expiry'] != '') {echo $data['expiry']; }?>"/>
          </div>
          </div>
           <div class="col-md-4">
           <div class="form-group">
              <label for="account">Bank Account No</label>
              <input type="text" name="account" id="account" class="form-control" value="<?php if ($data['account'] != '') {echo $data['account']; }?>"/> 
          </div>
        </div>
         <div class="col-md-4">
           <div class="form-group">
              <label for="ifsc">IFSC Code</label>
              <input type="text" name="ifsc" id="ifsc" class="form-control" value="<?php if ($data['ifsc'] != '') {echo $data['ifsc']; }?>"/> 
          </div>
        </div>
 
<div class="col-md-4">

 <?php 
if ($rowcountnew>0)
{
?>
<input type="hidden" id="button" class="form-control"  name="button" value="update"/>
<button type="submit" class="btn btn-primary">
    <i class="icon-check2"></i> Update
</button>    
<input type="hidden" id="editid" class="form-control" name="editid" value="<?php echo $data['id']?>"/>                            
<?php
}
else
{
?>
<input type="hidden" id="button" class="form-control"  name="button" value="save"/>

<button type="button" class="btn btn-warning mr-1" onclick="resetForm();">
<i class="icon-cross2"></i> Cancel
</button>
<button type="submit" class="btn btn-primary">
    <i class="icon-check2"></i> Save
</button>
<?php
}
?>
<input type="hidden" id="formtype" class="form-control stockliveinsert"  name="category" value="wallpaper"/>
 
            </div>
          </div>
      </form>
    </div>
  </div>
 </div>
            
               
            </div>
          </div> 

 <div class="card-block">
 
        
                    </div>
                </div>
            </div>
        </div>

         
    </div>
 
 
</section>
<!-- // Basic form layout section end -->
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
<?php require_once('../inc/footer1.php') ; ?>
<script type="text/javascript" src='https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js'></script>
  <script src="https://cdn.datatables.net/fixedheader/3.1.3/js/dataTables.fixedHeader.min.js" type="text/javascript"></script>

<script type="text/javascript">
   


/* import cost master file */
$("#gallery").validate({
ignore: ":hidden",
rules: 
        {
 uploadFile: { required: true , extension: "png|jpg|jpeg"},
 
        },
submitHandler: function (form) {
  
   $.ajax({
    type: "POST",
    url: '../ajax/bollyspl_ajax.php',
    data:new FormData(form),
    dataType    : 'json',
    contentType: false,
    cache: false,
    processData:false,
    success: function (res) {
      alert(res.type);
    if(res.type == 'update')
                {   
 
                    window.location.href = 'bollywood-dashboard.php?msg=success&&tab=cost';
                    $('.message').delay(2000).show().fadeOut('slow');
                    setTimeout(function(){
                        $("body").fadeOut(1000,function(){
                           window.location.href = "bollywood-dashboard.php";
                        })
                    },2000)
                }
                
                else if(res.type == 'error')
                {
                        alert(res.msg);
                }
                 }
             });
             return false; // required to block normal submit since you used ajax
         }
     }); 


/* import cost master file */ 

$('.delete').click(function(){
   var el = this;
   var filename= $(this).attr('data-file');
   var id = this.id;
   var splitid = id.split("_");

   // Delete id
   var deleteid = splitid[1];
    var  button  = 'deleteImg';
 if(confirm('Are you sure to remove this record ?'))
  {
  $.ajax({
     url: '../ajax/bollyspl_ajax.php',
     type: 'POST',
     dataType    : 'json',
     data: { id:deleteid ,  button : button  },
      success: function(response){
alert(response.type);

      if(response.type == 'delete')
       {
        window.location.href = 'edit_bollywoodspl.php?editid=<?php echo $_GET['editid'] ;?>&&msg=delete';
        $(el).closest('.img-wrap').fadeOut(800,function()
         {
                  $(this).remove();
         });
      }
      else
      {
         alert('Invalid ID.');
      }

    }
   });
        }
  
  });
</script>
<script type="text/javascript">
  CKEDITOR.replace( 'description' );
 </script>
 <script src="../app-assets/js/bootstrap-datepicker.js" type="text/javascript"></script>
<script type="text/javascript">
   $('.datepicker').datepicker({
       weekStart:1,
       color: 'red',

       dateFormat: 'dd-mm-yy' 
   });
  </script>
  </body>
</html>
