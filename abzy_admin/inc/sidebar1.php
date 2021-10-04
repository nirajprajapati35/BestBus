<style type="text/css">
  .main-menu.menu-dark .navigation li a.active {
    color: #fff;
    background: #3bafda;
}
.main-menu.menu-dark .navigation > li.open > a {
    color: #4f5153;
    background: #f2f2f2;
}
</style>
<div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
           
<li class="nav-item <?php if( $movie_show  == 1 || $box_office == 1  || $commercial  == 1 || $bollywood_spl  == 1  || $blog  == 1 || $abzywinner == 1  || $movie_of_week == 1 || $movie_master == 1 || $social == 1 || $abzy_trivia == 1) {echo "open" ;}?>"><a href="#"><i class="icon-grid2"></i><span data-i18n="nav.page_layouts.main" class="menu-title">Employee</span></a>
  <ul class="menu-content">
       
 
 <li class=" nav-item "><a href="../bollywood-spl/bollywood-dashboard.php" class="<?php if($bollywood_spl  == 1 ) {echo "active" ;}?>"><i class="icon-chevron-right"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">Employee Registration</span></a>
</li> 


  </ul>
</li> 


  </ul>
      </div>