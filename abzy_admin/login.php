<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <?php
    session_start();//session starts here  
    require_once('inc/top.php') ;
    $dashboard = 1 ; 


if(isset($_POST['login']))  
{  
    $email=$_POST['email'];  
    $user_pass=md5($_POST['pswd']);  
  
      $check_user="select * from user WHERE email='$email'AND pswd='$user_pass'";  
   
    $run=mysqli_query($conn,$check_user);  
    $res=mysqli_fetch_assoc($run);  
  
    if(mysqli_num_rows($run))  
    {  
        echo "<script>window.open('index.php','_self')</script>";  
  
        $_SESSION['username']=$res['username'];//here session is used and value of $user_email store in $_SESSION.  
        $_SESSION['user_level']=$res['user_level'];//here session is used and value of $user_email store in $_SESSION.  
   
    }  
    else  
    {  
      echo "<script>alert('Email or password is incorrect!')</script>";  
    }  
} 
    ?>
  </head>
 

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
                   <img src="../images/logo.png" alt="branding logo" style='width:50%;'>
                </div>
                <h6 class="card-subtitle line-on-side text-muted text-xs-center font-small-3 pt-2"><span>Login with BEST</span></h6>
            </div>
            <div class="card-body collapse in"> 
                <div class="card-block">
                    <form class="form-horizontal form-simple" name="loginmodel" id="loginmodel" method="post">
                         <div class="form-group">
                            <input type="text" class="form-control form-control-lg input-lg" id="user-name" placeholder="Your Email" name="email">
                            <div class="form-control-position">
                                <i class="icon-head"></i>
                            </div>
                        </div>

                         
                        <div class="usernmae_err"></div>
                        <div class="form-group">
                            <input type="password" class="form-control form-control-lg input-lg" id="user-password" placeholder="Enter Password" name="pswd">
                            <div class="form-control-position">
                                <i class="icon-key3"></i>
                            </div>
                       </div>
                        <div class="pswd_err"></div>
                        <!-- <fieldset class="form-group row">
                            <div class="col-md-6 col-xs-12 text-xs-center text-md-left">
                                <fieldset>
                                    <input type="checkbox" id="remember-me" class="chk-remember">
                                    <label for="remember-me"> Remember Me</label>
                                </fieldset>
                            </div>
                            <div class="col-md-6 col-xs-12 text-xs-center text-md-right"><a href="recover-password.php" class="card-link">Forgot Password?</a></div>  
                        </fieldset> -->
                        <div class="error"></div>
                        <input type="hidden" name="login" id="login">
                        <button type="submit" class="btn btn-primary btn-lg btn-block" name="login"><i class="icon-unlock2"></i> Login</button>
                    </form>
                </div>
                <p class="text-xs-center">Already have an account ? <a href="login.php" class="card-link">Login</a></p>
            </div>
           
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
 

    
     $("#loginmodel").validate({
         ignore: ":hidden",
         rules: {
          
        username: { required: true},
        pswd: { required: true}
         
        
        } 
         
          
     });

 });

</script>
  </body>
</html>
