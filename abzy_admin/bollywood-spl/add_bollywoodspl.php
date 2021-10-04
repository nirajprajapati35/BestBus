<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
<head>
<link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.1.3/css/fixedHeader.dataTables.min.css">
 <?php 
session_start();  
if(!$_SESSION['username'])  
{  
   header("Location: ../login.php"); 
} 
  require_once('../inc/top1.php') ; 
  require_once('../inc/header1.php') ;  
 $wallpaper = 1;
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
                    <h4 class="card-title" id="basic-layout-form"> Add Wallpaper  </h4>
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
                    <label for="bikemodel">Choose File </label>
                    <input type="file"  id = 'uploadFile' name="uploadFile"  />
                     
                  </div>
              </div>
              <div class="col-md-6">
                   <div class="form-group">
                      <label for="seo">SEO Keyword</label>
                      <input type="text" name="seo" id="seo" class="form-control"/> 
                  </div>
              </div>
               <div class="col-md-4 flt-box py-2">
                <label for="bikemodel">Display Date</label>
                <div class="controls">
                    <input class="datepicker form-control" type="text" name="postdate" id="postdate" />
                </div>
              </div>
              
              <div class="col-md-4">
                <input type="hidden" id="button" class="form-control stockliveinsert"  name="button" value="save"/>
                <label for="">&nbsp;</label>
                <br>
                <button id="btn-example-file-reset" type="button" class="btn btn-warning mr-1 reset"><i class="icon-cross2"></i> Reset file</button>
              </div>
              <div class="col-md-2">
                <label for="">&nbsp;</label><br>
                <button type="submit" class="btn btn-primary" name="submit" value="Upload">
                    <i class="icon-check2"></i> Upload
                </button>
                <input type="hidden" id="formtype" class="form-control stockliveinsert"  name="button" value="save"/>
                <input type="hidden" id="formtype" class="form-control stockliveinsert"  name="category" value="wallpaper"/>
              </div>
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
    
      $(document).ready(function () {
        $(document).ready(function() {
    $('#example').DataTable({

       paging: false,
        fixedHeader: {
            header: true,
            headerOffset: 45,
            },
        scrollX: true
    });
} );
});

 
 

    $(function () {
        $('.close').on('click', function () {
            $('#squarespaceModal').hide();
        })
    });



/* import cost master file */
$("#gallery").validate({
ignore: ":hidden",
rules: 
        {
 uploadFile: { required: true , extension: "png|jpg|jpeg"},
 
        },
submitHandler: function (form) {
for (instance in CKEDITOR.instances) 
{
    CKEDITOR.instances[instance].updateElement();
}
   $.ajax({
    type: "POST",
    url: '../ajax/gallery_ajax.php',
    data:new FormData(form),
    dataType    : 'json',
    contentType: false,
    cache: false,
    processData:false,
    success: function (res) {
      alert(res.type);
    if(res.type == 'success')
                {   

 
                    window.location.href = 'wallpaper_dashboard.php?msg=success&&tab=cost';
                    $('.message').delay(2000).show().fadeOut('slow');
                    setTimeout(function(){
                        $("body").fadeOut(1000,function(){
                           window.location.href = "wallpaper_dashboard.php";
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
/* import cost master file */ 

</script>
 
  </body>
</html>
