<?php
/**
 * Plugin Name: Divi theme VP definitions
 * Description: Plugin that holds VP definitions for Divi theme, because VP don't support theme definitions.
 * Version: 1.0
 * Author: Logos 036
 */

add_filter( 'http_request_args', function( $r, $url ) {
    $r['reject_unsafe_urls'] = false;
    return $r;
}, 10, 2 );
require trailingslashit( plugin_dir_path( __FILE__ ) ) . 'plugin-update-checker/plugin-update-checker.php';
$myUpdateChecker = new Puc_v4p4_Vcs_PluginUpdateChecker(
    new Puc_v4p4_Vcs_GitLabApi('https://g1tl4b.lgs036.com:9900/wp/plugin/divi-vp'),
    __FILE__,
    'divi-vp'
);
$myUpdateChecker->setAuthentication('ydLPVxJyFZJv65GUQacA');
