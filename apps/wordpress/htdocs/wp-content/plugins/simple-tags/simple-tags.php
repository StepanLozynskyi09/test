<?php
/*
Plugin Name: TaxoPress
Plugin URI: https://wordpress.org/plugins/simple-tags/
Description: Extended Tag Manager. Terms suggestion, Mass Edit Terms, Auto link Terms, Ajax Autocompletion, Click Terms, Advanced manage terms, etc.
Version: 3.0.4.3
Requires PHP: 5.6
Requires at least: 3.3
Tested up to: 5.6
Author: TaxoPress
Author URI: https://taxopress.com
Text Domain: simpletags

Copyright 2013-2021  TaxoPress 

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

Contributors to the TaxoPress code include:
    - Kevin Drouvin (kevin.drouvin@gmail.com - http://inside-dev.net)
    - Martin Modler (modler@webformatik.com - http://www.webformatik.com)
    - Vladimir Kolesnikov (vladimir@extrememember.com - http://blog.sjinks.pro)

Sections of the TaxoPress code are based on Custom Post Type UI by WebDevStudios.

Credits Icons :
    - famfamfam - http://www.famfamfam.com/lab/icons/silk/
*/

// don't load directly
if (!defined('ABSPATH')) {
    die('-1');
}

define('STAGS_VERSION', '3.0.4.3');
define('STAGS_MIN_PHP_VERSION', '5.6');
define('STAGS_OPTIONS_NAME', 'simpletags'); // Option name for save settings
define('STAGS_OPTIONS_NAME_AUTO', 'simpletags-auto'); // Option name for save settings auto terms

define('STAGS_URL', plugins_url('', __FILE__));
define('STAGS_DIR', rtrim(plugin_dir_path(__FILE__), '/'));
define('TAXOPRESS_ABSPATH', __DIR__);

// Check PHP min version
if (version_compare(PHP_VERSION, STAGS_MIN_PHP_VERSION, '<')) {
    require STAGS_DIR . '/inc/class.compatibility.php';

    // possibly display a notice, trigger error
    add_action('admin_init', array('SimpleTags_Compatibility', 'admin_init'));

    // stop execution of this file
    return;
}

require STAGS_DIR . '/inc/functions.inc.php'; // Internal functions
require STAGS_DIR . '/inc/taxonomies-functions.php'; // Taxonomy functions
require STAGS_DIR . '/inc/functions.deprecated.php'; // Deprecated functions
require STAGS_DIR . '/inc/functions.tpl.php';  // Templates functions

require STAGS_DIR . '/inc/class.plugin.php';
require STAGS_DIR . '/inc/class.client.php';
require STAGS_DIR . '/inc/class.client.tagcloud.php';
require STAGS_DIR . '/inc/class.widgets.php';

// Activation, uninstall
register_activation_hook(__FILE__, array('SimpleTags_Plugin', 'activation'));
register_deactivation_hook(__FILE__, array('SimpleTags_Plugin', 'deactivation'));

// Init TaxoPress
function init_simple_tags()
{
    new SimpleTags_Client();
    new SimpleTags_Client_TagCloud();

    // Admin and XML-RPC
    if (is_admin()) {
        require STAGS_DIR . '/inc/class.admin.php';
        new SimpleTags_Admin();
    }
    
	if (is_admin() && !defined('PUBLISHPRESS_ST_PRO_VERSION')) {
		//require_once(__DIR__ . '/includes-core/TaxopressCoreAdmin.php');
		//new \PublishPress\Taxopress\TaxopressCoreAdmin();
	}

    add_action('widgets_init', 'st_register_widget');
}

add_action('plugins_loaded', 'init_simple_tags');
