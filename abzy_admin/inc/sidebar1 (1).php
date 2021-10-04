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
           
          <li class=" nav-item "><a href="../index.php" class="<?php if($dashboard  == 1 ) {echo "active" ;}?>"><i class="icon-home3"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">Dashboard</span></a>
          </li>
<li class=" nav-item "><a href="../dealer_managment.php" class="<?php if($profilemngmt  == 1 ) {echo "active" ;}?>"><i class="icon-table2"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">Profile Managment</span></a>
          </li>
<li class=" nav-item <?php if($bikemodeldashboard  == 1 ) {echo "open" ;}?>"><a href="#"><i class="icon-stack-2"></i><span data-i18n="nav.page_layouts.main" class="menu-title">Bike Model</span></a>
            <ul class="menu-content">
                <li><a href="../bike_model/bike_model_dashboard.php" data-i18n="nav.page_layouts.1_column" class="menu-item <?php if($bikemodeldashboard  == 1 ) {echo "active" ;}?>"><i class="icon-chevron-right"></i> Bike Model Dashboard</a> </li>
            </ul>
          </li>  
<li class=" nav-item <?php if($colordashborad  == 1 ) {echo "open" ;}?>"><a href="#"><i class="icon-stack-2"></i><span data-i18n="nav.page_layouts.main" class="menu-title">Color Model</span></a>
            <ul class="menu-content">
                <li><a href="../color_model/color_model_dashboard.php" data-i18n="nav.page_layouts.1_column" class="menu-item <?php if($colordashborad  == 1 ) {echo "active" ;}?>"><i class="icon-chevron-right"></i> Color Model Dashboard</a> </li>
            </ul>
          </li>
<li class=" nav-item"><a href="../bikemodel_mapping_color/bikemodel_mapping_color.php" class="<?php if($bikemodelmappingcolor  == 1 ) {echo "active" ;}?>"><i class="icon-stack-2"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">Bike Model Mapping Color</span></a>      
</li>
<li class="nav-item"><a href="../location/location_dashboard.php" class="<?php if($location  == 1 ) {echo "active" ;}?>"><i class="icon-stack-2"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">Location</span></a>
   </li> 
<li class=" nav-item <?php if($dealermodeldashboard  == 1 ) {echo "open" ;}?>"><a href="#"><i class="icon-stack-2"></i><span data-i18n="nav.page_layouts.main" class="menu-title">Dealer</span></a>
            <ul class="menu-content">
                <li><a href="../dealer_model/dealer_model_dashboard.php" data-i18n="nav.page_layouts.1_column" class="menu-item <?php if($dealermodeldashboard  == 1 ) {echo "active" ;}?>"><i class="icon-chevron-right"></i> Dealer Dashboard</a> </li>
            </ul>      
<li class=" nav-item <?php if($stock  == 1 || $stockupload == 1 ||  $stocksearch == 1 ) {echo "open" ;}?>"><a href="#"><i class="icon-stack-2"></i><span data-i18n="nav.page_layouts.main" class="menu-title">Stock</span></a>
            <ul class="menu-content">
                <li><a href="../stock/stock_dashboard.php" data-i18n="nav.page_layouts.1_column" class="menu-item <?php if($stock  == 1 ) {echo "active" ;}?>"><i class="icon-chevron-right"></i> Stock Dashboard</a> </li>
                <li><a href="../stock/stock_upload.php" data-i18n="nav.page_layouts.1_column" class="menu-item <?php if($stockupload  == 1 ) {echo "active" ;}?>"><i class="icon-chevron-right"></i> Stock Upload</a> </li>
                <li><a href="../stock/stock_search.php" data-i18n="nav.page_layouts.1_column" class="menu-item <?php if($stocksearch  == 1 ) {echo "active" ;}?>"><i class="icon-chevron-right"></i> Stock Search</a> </li>
            </ul>
</li> 
<li class=" nav-item <?php if($placeorder  == 1   ) {echo "open" ;}?>"><a href="#"><i class="icon-stack-2"></i><span data-i18n="nav.page_layouts.main" class="menu-title">Place Order</span></a>
            <ul class="menu-content">
                <li><a href="../place_order/place_order_dashboard.php" data-i18n="nav.page_layouts.1_column" class="menu-item <?php if($placeorder  == 1 ) {echo "active" ;}?>"><i class="icon-chevron-right"></i> Place order Dashboard</a> </li>
                 
</ul>
</li>    

  
          <!-- <li class=" nav-item"><a href="#"><i class="icon-briefcase4"></i><span data-i18n="nav.project.main" class="menu-title">Pages</span></a>
            <ul class="menu-content">
              <li><a href="invoice-template.php" data-i18n="nav.invoice.invoice_template" class="menu-item">Invoice Template</a>
              </li>
              <li><a href="gallery-grid.php" data-i18n="nav.gallery_pages.gallery_grid" class="menu-item">Gallery Grid</a>
              </li>
              <li><a href="search-page.php" data-i18n="nav.search_pages.search_page" class="menu-item">Search Page</a>
              </li>
              <li><a href="search-website.php" data-i18n="nav.search_pages.search_website" class="menu-item">Search Website</a>
              </li>
              <li><a href="login-simple.php" data-i18n="nav.login_register_pages.login_simple" class="menu-item">Login Simple</a>
              </li>
              <li><a href="register-simple.php" data-i18n="nav.login_register_pages.register_simple" class="menu-item">Register Simple</a>
              </li>
              <li><a href="unlock-user.php" data-i18n="nav.login_register_pages.unlock_user" class="menu-item">Unlock User</a>
              </li>
              <li><a href="recover-password.php" data-i18n="nav.login_register_pages.recover_password" class="menu-item">Recover Password</a>
              </li>
              <li><a href="#" data-i18n="nav.error_pages.main" class="menu-item">Error</a>
                <ul class="menu-content">
                  <li><a href="error-400.php" data-i18n="nav.error_pages.error_400" class="menu-item">Error 400</a>
                  </li>
                  <li><a href="error-401.php" data-i18n="nav.error_pages.error_401" class="menu-item">Error 401</a>
                  </li>
                  <li><a href="error-403.php" data-i18n="nav.error_pages.error_403" class="menu-item">Error 403</a>
                  </li>
                  <li><a href="error-404.php" data-i18n="nav.error_pages.error_404" class="menu-item">Error 404</a>
                  </li>
                  <li><a href="error-500.php" data-i18n="nav.error_pages.error_500" class="menu-item">Error 500</a>
                  </li>
                </ul>
              </li>
              <li><a href="coming-soon-flat.php" data-i18n="nav.other_pages.coming_soon.coming_soon_flat" class="menu-item">Coming Soon</a>
              </li>
              <li><a href="under-maintenance.php" data-i18n="nav.other_pages.under_maintenance" class="menu-item">Maintenance</a>
              </li>
            </ul>
          </li> -->
          <!-- <li class=" nav-item"><a href="#"><i class="icon-ios-albums-outline"></i><span data-i18n="nav.cards.main" class="menu-title">Cards</span></a>
            <ul class="menu-content">
              <li><a href="card-bootstrap.php" data-i18n="nav.cards.card_bootstrap" class="menu-item">Bootstrap Cards</a>
              </li>
              <li><a href="card-actions.php" data-i18n="nav.cards.card_actions" class="menu-item">Card Action</a>
              </li>
            </ul>
          </li> -->
          <!-- <li class=" nav-item"><a href="#"><i class="icon-whatshot"></i><span data-i18n="nav.advance_cards.main" class="menu-title">Advance Cards</span></a>
            <ul class="menu-content">
              <li><a href="card-statistics.php" data-i18n="nav.cards.card_statistics" class="menu-item">Statistics</a>
              </li>
              <li><a href="card-charts.php" data-i18n="nav.cards.card_charts" class="menu-item">Charts</a>
              </li>
            </ul>
          </li> -->
         <!--  <li class=" nav-item"><a href="#"><i class="icon-compass3"></i><span data-i18n="nav.content.main" class="menu-title">Content</span></a>
            <ul class="menu-content">
              <li><a href="content-grid.php" data-i18n="nav.content.content_grid" class="menu-item">Grid</a>
              </li>
              <li><a href="content-typography.php" data-i18n="nav.content.content_typography" class="menu-item">Typography</a>
              </li>
              <li><a href="content-text-utilities.php" data-i18n="nav.content.content_text_utilities" class="menu-item">Text utilities</a>
              </li>
              <li><a href="content-helper-classes.php" data-i18n="nav.content.content_helper_classes" class="menu-item">Helper classes</a>
              </li>
            </ul>
          </li> -->
         <!--  <li class=" nav-item"><a href="#"><i class="icon-grid2"></i><span data-i18n="nav.components.main" class="menu-title">Components</span></a>
            <ul class="menu-content">
              <li><a href="component-alerts.php" data-i18n="nav.components.component_alerts" class="menu-item">Alerts</a>
              </li>
              <li><a href="component-buttons-basic.php" data-i18n="nav.components.components_buttons.component_buttons_basic" class="menu-item">Basic Buttons</a>
              </li>
              <li><a href="component-carousel.php" data-i18n="nav.components.component_carousel" class="menu-item">Carousel</a>
              </li>
              <li><a href="component-collapse.php" data-i18n="nav.components.component_collapse" class="menu-item">Collapse</a>
              </li>
              <li><a href="component-dropdowns.php" data-i18n="nav.components.component_dropdowns" class="menu-item">Dropdowns</a>
              </li>
              <li><a href="component-list-group.php" data-i18n="nav.components.component_list_group" class="menu-item">List Group</a>
              </li>
              <li><a href="component-modals.php" data-i18n="nav.components.component_modals" class="menu-item">Modals</a>
              </li>
              <li><a href="component-pagination.php" data-i18n="nav.components.component_pagination" class="menu-item">Pagination</a>
              </li>
              <li><a href="component-navs-component.php" data-i18n="nav.components.component_navs_component" class="menu-item">Navs Component</a>
              </li>
              <li><a href="component-tabs-component.php" data-i18n="nav.components.component_tabs_component" class="menu-item">Tabs Component</a>
              </li>
              <li><a href="component-pills-component.php" data-i18n="nav.components.component_pills_component" class="menu-item">Pills Component</a>
              </li>
              <li><a href="component-tooltips.php" data-i18n="nav.components.component_tooltips" class="menu-item">Tooltips</a>
              </li>
              <li><a href="component-popovers.php" data-i18n="nav.components.component_popovers" class="menu-item">Popovers</a>
              </li>
              <li><a href="component-tags.php" data-i18n="nav.components.component_tags" class="menu-item">Tags</a>
              </li>
              <li><a href="component-pill-tags.php" class="menu-item">Pill Tags</a>
              </li>
              <li><a href="component-progress.php" data-i18n="nav.components.component_progress" class="menu-item">Progress</a>
              </li>
              <li><a href="component-media-objects.php" data-i18n="nav.components.component_media_objects" class="menu-item">Media Objects</a>
              </li>
            </ul>
          </li> -->
         <!--  <li class=" nav-item"><a href="#"><i class="icon-eye6"></i><span data-i18n="nav.icons.main" class="menu-title">Icons</span></a>
            <ul class="menu-content">
              <li><a href="icons-feather.php" data-i18n="nav.icons.icons_feather" class="menu-item">Feather</a>
              </li>
              <li><a href="icons-ionicons.php" data-i18n="nav.icons.icons_ionicons" class="menu-item">Ionicons</a>
              </li>
              <li><a href="icons-fps-line.php" data-i18n="nav.icons.icons_fps_line" class="menu-item">FPS Line Icons</a>
              </li>
              <li><a href="icons-ico-moon.php" data-i18n="nav.icons.icons_ico_moon" class="menu-item">Ico Moon</a>
              </li>
              <li><a href="icons-font-awesome.php" data-i18n="nav.icons.icons_font_awesome" class="menu-item">Font Awesome</a>
              </li>
              <li><a href="icons-meteocons.php" data-i18n="nav.icons.icons_meteocons" class="menu-item">Meteocons</a>
              </li>
              <li><a href="icons-evil.php" data-i18n="nav.icons.icons_evil" class="menu-item">Evil Icons</a>
              </li>
              <li><a href="icons-linecons.php" data-i18n="nav.icons.icons_linecons" class="menu-item">Linecons</a>
              </li>
            </ul>
          </li> -->
         
           
         <!--  <li class=" nav-item"><a href="#"><i class="icon-bar-graph-2"></i><span data-i18n="nav.google_charts.main" class="menu-title">google Charts</span></a>
            <ul class="menu-content">
              <li><a href="google-bar-charts.php" data-i18n="nav.google_charts.google_bar_charts" class="menu-item">Bar charts</a>
              </li>
              <li><a href="google-line-charts.php" data-i18n="nav.google_charts.google_line_charts" class="menu-item">Line charts</a>
              </li>
              <li><a href="google-pie-charts.php" data-i18n="nav.google_charts.google_pie_charts" class="menu-item">Pie charts</a>
              </li>
            </ul>
          </li> -->
          <!-- <li class=" nav-item"><a href="#"><i class="icon-stats-dots"></i><span data-i18n="nav.chartjs.main" class="menu-title">Chartjs</span></a>
            <ul class="menu-content">
              <li><a href="chartjs-line-charts.php" data-i18n="nav.chartjs.chartjs_line_charts" class="menu-item">Line charts</a>
              </li>
              <li><a href="chartjs-bar-charts.php" data-i18n="nav.chartjs.chartjs_bar_charts" class="menu-item">Bar charts</a>
              </li>
              <li><a href="chartjs-pie-doughnut-charts.php" data-i18n="nav.chartjs.chartjs_pie_doughnut_charts" class="menu-item">Pie &amp; Doughnut charts</a>
              </li>
            </ul>
          </li> -->
          <!-- <li class=" nav-item"><a href="#"><i class="icon-pie-graph2"></i><span data-i18n="nav.flot_charts.main" class="menu-title">Flot Charts</span></a>
            <ul class="menu-content">
              <li><a href="flot-line-charts.php" data-i18n="nav.flot_charts.flot_line_charts" class="menu-item">Line charts</a>
              </li>
              <li><a href="flot-bar-charts.php" data-i18n="nav.flot_charts.flot_bar_charts" class="menu-item">Bar charts</a>
              </li>
              <li><a href="flot-pie-charts.php" data-i18n="nav.flot_charts.flot_pie_charts" class="menu-item">Pie charts</a>
              </li>
            </ul>
          </li> -->
          <!-- <li class=" nav-item"><a href="#"><i class="icon-map22"></i><span data-i18n="nav.maps.main" class="menu-title">Maps</span></a>
            <ul class="menu-content">
              <li><a href="gmaps-basic-maps.php" data-i18n="nav.maps.google_maps.gmaps_basic_maps" class="menu-item">Maps</a>
              </li>
              <li><a href="vector-maps-jvq.php" data-i18n="nav.maps.vector_maps.vector_maps_jvq" class="menu-item">Vector Maps</a>
              </li>
            </ul>
          </li> -->
          <!-- <li class=" nav-item"><a href="#"><i class="icon-paint-format"></i><span data-i18n="nav.color_palette.main" class="menu-title">Color Palette</span></a>
            <ul class="menu-content">
              <li><a href="color-palette-primary.php" data-i18n="nav.color_palette.color_palette_primary" class="menu-item">Primary palette</a>
              </li>
              <li><a href="color-palette-danger.php" data-i18n="nav.color_palette.color_palette_danger" class="menu-item">Danger palette</a>
              </li>
              <li><a href="color-palette-success.php" data-i18n="nav.color_palette.color_palette_success" class="menu-item">Success palette</a>
              </li>
              <li><a href="color-palette-warning.php" data-i18n="nav.color_palette.color_palette_warning" class="menu-item">Warning palette</a>
              </li>
              <li><a href="color-palette-info.php" data-i18n="nav.color_palette.color_palette_info" class="menu-item">Info palette</a>
              </li>
              <li class="navigation-divider"></li>
              <li><a href="color-palette-red.php" data-i18n="nav.color_palette.color_palette_red" class="menu-item">Red palette</a>
              </li>
              <li><a href="color-palette-pink.php" data-i18n="nav.color_palette.color_palette_pink" class="menu-item">Pink palette</a>
              </li>
              <li><a href="color-palette-purple.php" data-i18n="nav.color_palette.color_palette_purple" class="menu-item">Purple palette</a>
              </li>
              <li><a href="color-palette-deep-purple.php" data-i18n="nav.color_palette.color_palette_deep_purple" class="menu-item">Deep Purple palette</a>
              </li>
              <li><a href="color-palette-indigo.php" data-i18n="nav.color_palette.color_palette_indigo" class="menu-item">Indigo palette</a>
              </li>
              <li><a href="color-palette-blue.php" data-i18n="nav.color_palette.color_palette_blue" class="menu-item">Blue palette</a>
              </li>
              <li><a href="color-palette-light-blue.php" data-i18n="nav.color_palette.color_palette_light_blue" class="menu-item">Light Blue palette</a>
              </li>
              <li><a href="color-palette-cyan.php" data-i18n="nav.color_palette.color_palette_cyan" class="menu-item">Cyan palette</a>
              </li>
              <li><a href="color-palette-teal.php" data-i18n="nav.color_palette.color_palette_teal" class="menu-item">Teal palette</a>
              </li>
              <li><a href="color-palette-green.php" data-i18n="nav.color_palette.color_palette_green" class="menu-item">Green palette</a>
              </li>
              <li><a href="color-palette-light-green.php" data-i18n="nav.color_palette.color_palette_light_green" class="menu-item">Light Green palette</a>
              </li>
              <li><a href="color-palette-lime.php" data-i18n="nav.color_palette.color_palette_lime" class="menu-item">Lime palette</a>
              </li>
              <li><a href="color-palette-yellow.php" data-i18n="nav.color_palette.color_palette_yellow" class="menu-item">Yellow palette</a>
              </li>
              <li><a href="color-palette-amber.php" data-i18n="nav.color_palette.color_palette_amber" class="menu-item">Amber palette</a>
              </li>
              <li><a href="color-palette-orange.php" data-i18n="nav.color_palette.color_palette_orange" class="menu-item">Orange palette</a>
              </li>
              <li><a href="color-palette-deep-orange.php" data-i18n="nav.color_palette.color_palette_deep_orange" class="menu-item">Deep Orange palette</a>
              </li>
              <li><a href="color-palette-brown.php" data-i18n="nav.color_palette.color_palette_brown" class="menu-item">Brown palette</a>
              </li>
              <li><a href="color-palette-blue-grey.php" data-i18n="nav.color_palette.color_palette_blue_grey" class="menu-item">Blue Grey palette</a>
              </li>
              <li><a href="color-palette-grey.php" data-i18n="nav.color_palette.color_palette_grey" class="menu-item">Grey palette</a>
              </li>
            </ul>
          </li> -->
          <!-- <li class=" nav-item"><a href="changelog.php"><i class="icon-copy"></i><span data-i18n="nav.changelog.main" class="menu-title">Changelog</span><span class="tag tag tag-pill tag-danger float-xs-right">1.0</span></a>
          </li> -->
          <!-- <li class="disabled nav-item"><a href="#"><i class="icon-eye-disabled"></i><span data-i18n="nav.disabled_menu.main" class="menu-title">Disabled Menu</span></a>
          </li> -->
          <!-- <li class=" nav-item"><a href="#"><i class="icon-android-funnel"></i><span data-i18n="nav.menu_levels.main" class="menu-title">Menu levels</span></a>
            <ul class="menu-content">
              <li><a href="#" data-i18n="nav.menu_levels.second_level" class="menu-item">Second level</a>
              </li>
              <li><a href="#" data-i18n="nav.menu_levels.second_level_child.main" class="menu-item">Second level child</a>
                <ul class="menu-content">
                  <li><a href="#" data-i18n="nav.menu_levels.second_level_child.third_level" class="menu-item">Third level</a>
                  </li>
                  <li><a href="#" data-i18n="nav.menu_levels.second_level_child.third_level_child.main" class="menu-item">Third level child</a>
                    <ul class="menu-content">
                      <li><a href="#" data-i18n="nav.menu_levels.second_level_child.third_level_child.fourth_level1" class="menu-item">Fourth level</a>
                      </li>
                      <li><a href="#" data-i18n="nav.menu_levels.second_level_child.third_level_child.fourth_level2" class="menu-item">Fourth level</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ul>
          </li> -->
          <!-- <li class=" navigation-header"><span data-i18n="nav.category.support">Support</span><i data-toggle="tooltip" data-placement="right" data-original-title="Support" class="icon-ellipsis icon-ellipsis"></i>
          </li> -->
         <!--  <li class=" nav-item"><a href="https://github.com/pixinvent/robust-free-bootstrap-abzy_admin-template/issues"><i class="icon-support"></i><span data-i18n="nav.support_raise_support.main" class="menu-title">Raise Support</span></a>
          </li> -->
          <!-- <li class=" nav-item"><a href="https://pixinvent.com/free-bootstrap-template/robust-lite/documentation"><i class="icon-document-text"></i><span data-i18n="nav.support_documentation.main" class="menu-title">Documentation</span></a>
          </li> -->
        </ul>
      </div>