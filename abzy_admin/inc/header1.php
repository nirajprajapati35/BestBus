
 <style type="text/css">
   .brand-logo
   {
    width: 83px;
    margin: 0px auto;
   }
  .header-navbar.navbar-semi-dark .navbar-header {
    background: #ffffff;
}
.error
{
    color: #a94442;
}
 .header-navbar .navbar-container .dropdown-menu-media {
    
    height: auto;
    overflow-y: scroll;
}

 </style>
 
<nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
      <div class="navbar-wrapper">
        <div class="navbar-header" style="background-color: #fff;">
          <ul class="nav navbar-nav">
            <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5 font-large-1"></i></a></li>
            <li class="nav-item">

              <a href="../index.php" class="navbar-brand nav-link" style="padding-top: 0px;">
                 
<img alt="branding logo" src="../../images/logo.png" data-expand="../../images/logo.png" data-collapse="" class="brand-logo">
 
                 
              
            </a>
            </li>
            <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
          </ul>
        </div>
        <div class="navbar-container content container-fluid">
          <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
            <ul class="nav navbar-nav">
              <li class="nav-item hidden-sm-down"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5">         </i></a></li>
              
            </ul>
            <ul class="nav navbar-nav float-xs-right">
             

              <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online"><img src="../app-assets/images/avatar.jpg" alt="avatar"></span><span class="user-name"><?php echo $_SESSION['username']?> </span></a>
                <div class="dropdown-menu dropdown-menu-right"> 
                  <div class="dropdown-divider"></div><a href="../logout.php" class="dropdown-item"><i class="icon-power3"></i> Logout</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>