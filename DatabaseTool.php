<?php
/*
 * Plugin Name: ISC Database Tool
 * Plugin URI:
 * Description: Database tool and more
 * Version: 1.1.0
 * Author: Nathan Eggers & Daniel Barbrow
 * Author URI:
 */
 require 'addmenuadmin.php';
 add_action('admin_menu', 'isc_database_plugin_manage_menu');