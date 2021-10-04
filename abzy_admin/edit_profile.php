<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
<head>
<?php 
session_start();  
if(!$_SESSION['username'])  
{  
   header("Location: login.php"); 
} 
 require_once('inc/top.php') ; 
 require_once('inc/header.php') ;  
$profilemngmt = 1 ;
  $query = "select * from user where email = '".$_SESSION['username']."' " ; 
$res = mysqli_query($conn, $query) or die("Error: ".mysqli_error($conn));
$rowcount=mysqli_num_rows($res);
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
</style>   
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
                <?php 
                if (isset($_GET['msg'])) 
                {
                   ?>

<div class="card bg-teal message">
                <div class="card-body">
                    <div class="card-block" style="padding: 10px 15px;">
                        <div class="media">
                            <div class="media-body white text-xs-left">
<?php  if ($_GET['msg'] == 'success')   { ?> <span> Successfully Added . </span> <?php  } ?>
<?php  if ($_GET['msg'] == 'update')   { ?> <span> Successfully Updated . </span> <?php  } ?>
<?php  if ($_GET['msg'] == 'delete')   { ?> <span> Successfully Deleted . </span> <?php  } ?>
                            </div>
                             
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
                    <h4 class="card-title" id="basic-layout-form">Edit Profile  </h4>
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
    <div class="card-block">
        <form class="form" name="profileupdate" id="profileupdate">
            <div class="form-body">
             
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="projectinput1">Email</label>
                            <input type="text" id="email" class="form-control" placeholder="Email" name="email" value="<?php if ($data['email'] != '') {echo $data['email']; }?>">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="projectinput2">User Name</label>
                            <input type="text" id="username" class="form-control" placeholder="username" name="username" value="<?php if ($data['username'] != '') {echo $data['username']; }?>">
                        </div>
                   </div>
                 </div>
                 

                                
                            </div>

                            <div class="form-actions">

 
    <?php 
if ($rowcount>0)
{
?>
<input type="hidden" id="button" class="form-control"  name="button" value="update"/>
<input type="hidden" id="editid" class="form-control"  name="editid" value="<?php if ($data['uid'] != '') {echo $data['uid']; }?>"/>
<button type="submit" class="btn btn-primary" name="register">
    <i class="icon-check2"></i> Update
</button>    
                            
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

<input type="hidden" id="formtype" class="form-control"  name="formtype" value="profile"/>
                                    
                                
                            </div>
                        </form>
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
<?php require_once('inc/footer.php') ; ?>
<script type="text/javascript">
    
      $(document).ready(function () {
 $('.delete').click(function(){
   var el = this;
   var filename= $(this).attr('data-file');
   var id = this.id;
   var splitid = id.split("_");

   // Delete id
   var deleteid = splitid[1];
    
 if(confirm('Are you sure to remove this record ?'))
        {
$.ajax({
     url: 'ajax/deletelogo.php',
     type: 'POST',
     data: { id:deleteid },
     success: function(response){
 
       if(response == 1)
       {
        window.location.href = 'dealer_managment.php?msg=delete';
   // Remove row from HTML Table
              
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

    
     $("#profileupdate").validate({
         ignore: ":hidden",
         rules: {
          
        username: { required: true},
        email: {  required: true },
         
        
        },
         
         submitHandler: function (form) {
            $.ajax({
                 type: "POST",
                 url: 'ajax/registermodel.php',
                data:new FormData(form),
                dataType    : 'json',
                contentType: false,
                cache: false,
                processData:false,
               
                 success: function (res) {
                      
              if(res.type == 'success')
                {   
                    window.location.href = 'edit_profile.php?msg=success';
                    $('.message').delay(2000).show().fadeOut('slow');
                      
                   
                    setTimeout(function(){
                        $("body").fadeOut(1000,function(){
                           window.location.href = "edit_profile.php";
                        })
                    },2000)
                
                      
                     
                }
                if(res.type == 'update')
                {   

                    window.location.href = 'edit_profile.php?msg=update';
                    $('.message').delay(2000).show().fadeOut('slow');
                      
                   
                    setTimeout(function(){
                        $("body").fadeOut(1000,function(){
                           window.location.href = "edit_profile.php";
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

 });

</script>
    
  </body>
</html>
