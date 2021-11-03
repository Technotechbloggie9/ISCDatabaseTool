<?php 
require __DIR__ . '/adminpages/isc-db-settings-page.php';
function isc_database_plugin_manage_menu() {

	//create new top-level menu
	//The page would be named ISC DB Settings, and the menu will be the same
    //One can specify the role needed to access this setting (administrator)
    //changed this to the capability as it was documented as on
    // https://developer.wordpress.org/reference/functions/add_menu_page/
  /*
  NOTE: $icon_url must use relative path,
        external URL's may not work,
        dashicons have not worked,
        encoded svg's have not worked,
        png format (with transparency)
        seems to work even if display
        is not ideal
  */
  $icon_url = "/wp-content/plugins/ISCTestCode/icons/database.png";
	add_menu_page(
    __('ISC DB Settings', 'iscdb'),
    __('ISC DB Settings', 'iscdb'),
    'update_core',
    'isc_db_settings',
    'isc_db_settings_page',
    $icon_url,
    79
   );
   add_menu_page(
     __('WP DEBUG', 'wplog'),
     __('WP DEBUG', 'wplog'),
     'update_core',
     'debug_it',
     'debug_page',
     $icon_url,
     78
   );
 }
 ?>