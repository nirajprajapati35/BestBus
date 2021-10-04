<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <?php
    session_start();//session starts here  
    require_once('inc/top.php') ;
    $dashboard = 1 ; 
 
    ?>
  </head>
 <style type="text/css">
     .line-on-side {
     
    margin: -18px 0 -5px;
}
 </style>

  <body data-open="click" data-menu="vertical-menu" data-col="1-column" class="vertical-layout vertical-menu 1-column  blank-page blank-page">
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="flexbox-container">
    <div class="col-md-4 offset-md-4 col-xs-10 offset-xs-1  box-shadow-2 p-0">
        <div class="card border-grey border-lighten-3 m-0">
            <div class="card-header no-border">
                <div class="card-title text-xs-center">
                    <div class="p-1"><img src="logo/<?php echo $data['logo'];?>" alt="branding logo" style='width: 82px;'></div>
                </div>
                <h6 class="card-subtitle line-on-side text-muted text-xs-center font-small-3 pt-2"><span>Login with Auto Den</span></h6>
            </div>
            <div class="card-body collapse in"> 
                <div class="card-block">
                    <div class="message"></div>
                    <form class="form-horizontal form-simple" id="registerform" name="registerform" >
                        <fieldset class="form-group position-relative has-icon-left mb-1">
                            <input type="text" class="form-control form-control-lg input-lg" id="username" placeholder="User Name" name="username">
                            <div class="form-control-position">
                                <i class="icon-head"></i>
                            </div>
                        </fieldset>
                        <fieldset class="form-group position-relative has-icon-left mb-1">
                            <input type="email" class="form-control form-control-lg input-lg" id="email" placeholder="Your Email Address" name='email'>
                            <div class="form-control-position" >
                                <i class="icon-mail6"></i> 
                            </div>
                            <div class="email_err"></div>
                        </fieldset>
                        <fieldset class="form-group position-relative has-icon-left">
                            <input type="password" class="form-control form-control-lg input-lg" id="pswd" placeholder="Enter Password" name="pswd">
                            <div class="form-control-position">
                                <i class="icon-key3"></i>
                            </div>
                        </fieldset>

                        <fieldset class="form-group position-relative has-icon-left">
                            <select id="userrole" name="userrole" class="form-control" data-toggle="tooltip" data-trigger="hover" data-placement="top" data-title="Priority" data-original-title="" title="">
                                        <option value="">Select</option>
                                        <option value="2">Salse Represntative</option>
                                        <option value="3">Manager</option>
                                        <option value="4">Account</option>
                                    </select>
                        </fieldset>
                         <input type="hidden" name="button" value="register"> 
                        <button type="submit" class="btn btn-primary btn-lg btn-block" name="register"><i class="icon-unlock2"></i> Register</button>
                       
                    </form>
                </div>
                <p class="text-xs-center">Already have an account ? <a href="login.php" class="card-link">Login</a></p>
            </div>
            <!--<div class="card-footer">
                <div class="">
                    <p class="float-sm-left text-xs-center m-0"><a href="recover-password.php" class="card-link">Recover password</a></p>
                    <p class="float-sm-right text-xs-center m-0">New to Robust? <a href="register-simple.php" class="card-link">Sign Up</a></p>
                </div>
            </div>-->
        </div>
    </div>
</section>

        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
 
            
    <!-- BEGIN VENDOR JS-->
<?php require_once('inc/footer.php') ; ?>
<script type="text/javascript">
    
      $(document).ready(function () {
        $("#registerform").validate({

        ignore: ":hidden",
        rules: {
        username: { required: true},
        email: { required: true},
        pswd: { required: true},
        userrole: { required: true}
        },
        submitHandler: function (form) {
            $.ajax({
                type: "POST",
                url: 'ajax/registermodel.php',
                data:  $('#registerform').serialize(),
                dataType : 'json',
                success: function (res) {


                     
              if(res.type == 'success')
                {   
                    window.location.href = 'login.php?msg=success';
                    $('.message').delay(2000).show().fadeOut('slow');
                      
                   
                    setTimeout(function(){
                        $("body").fadeOut(1000,function(){
                           window.location.href = "login.php";
                        })
                    },2000)
                
                      
                     
                }
                
                else if(res.type == 'error')
                {
                    
                        $('.email_err').text(res.msg);
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
