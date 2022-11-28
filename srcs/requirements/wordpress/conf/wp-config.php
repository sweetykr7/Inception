<?php
/**
 * Custom WordPress configurations on "wp-config.php" file.
 *
 * This file has the following configurations: MySQL settings, Table Prefix, Secret Keys, WordPress Language, ABSPATH and more.
 * For more information visit {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php} Codex page.
 * Created using {@link http://generatewp.com/wp-config/ wp-config.php File Generator} on GenerateWP.com.
 *
 * @package WordPress
 * @generator GenerateWP.com
 */


/* MySQL settings */
define( 'DB_NAME', getenv('MYSQL_DATABASE'));
define( 'DB_USER', getenv('MYSQL_USER'));
define(	'DB_PASSWORD', getenv('MYSQL_PASSWORD'));
define(	'DB_HOST', 'mariadb');
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );


/* MySQL database table prefix. */
$table_prefix = 'wp_';


/* Authentication Unique Keys and Salts. */
/* https://api.wordpress.org/secret-key/1.1/salt/ */
define('AUTH_KEY',         'Q($o2Bx?cH?S-wd-M?AT.7PA<7I.K#9d%FfJ8[`i|@~[TcY]$G$*1IOO1te5Mrpj');
define('SECURE_AUTH_KEY',  '/bFWM7+e?[aB}DW{7yc^6{2S+JjdV-BpV{7V(6IP-[[BK:nMu*gK>-c&a=:hY+/d');
define('LOGGED_IN_KEY',    'bUz>|5Q[[D}~ZX`>pGNyN=nD-wPJ#3F[96:xmH^bx;fyO5`S;6=:6JdI&spl-ObO');
define('NONCE_KEY',        'Xxf1E}|J<$~(2_=8jib+aBl*^vS1;Ul8&2TfCtF~d7/T/Z-=e7f<qd]n2r%!n08$');
define('AUTH_SALT',        'a9B,g+:p&OYu2by&WOp(~9ewI-_)@+I_HyU*t=[]TeWPRcmNIU93l=>wu-4|P.y{');
define('SECURE_AUTH_SALT', 'l:(q#dM_[9oQl(l^g&.*)-mJio(($pR-wkw&O&993N>aiw=?*tJ{=U_{S&W(HO0^');
define('LOGGED_IN_SALT',   'Rs|b=PN`3|E[!]N4<s4?BD:2&{@5RzNuQsO[SMrEt0mF12j4V6<1h51Uw!4W?@J4');
define('NONCE_SALT',       'Gp9E$ sE?Ldr0oJZCA*gIDWOI%LREJIx+(uM%fY0M_uZtcwt3(|zTJW|WvT@_-7M');


/* Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/* Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');