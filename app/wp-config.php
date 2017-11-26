<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'creative');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'JuGx%hODp!C<Pq+L7;?/:A*8&05_WyF`-Z-i_#*()-7)ro[(~/&oUD]&[8NA(Kf5');
define('SECURE_AUTH_KEY',  'M]GU`B@l_edRhyh~-JgtJQRoSsd}`f+)F7I()[]SfIBTQ=?aL4,U~eyO6~I- QnR');
define('LOGGED_IN_KEY',    'cw:AZA2EW*V=}|VdT{~eK5dSUI*idk7cnAnG~|!gy _#5/UbM8}lDH~fh-X%O/?,');
define('NONCE_KEY',        '^@G:u;:lsIzsf#7,[ceWPDEiH*a`NO2P%Wx<I*1x_u$mXlN?qt3,&{.9PHMKL~N9');
define('AUTH_SALT',        'hZLsiF-^LAjN+lM3Pgox9!ZQ!b2-ixgl:Z`/&U(z}zwK1X[XhvnUw+!wML<,Y)O-');
define('SECURE_AUTH_SALT', 'k L1?agU:{Y.DB&-TMc6pN[7M+=V_Pw>-p+ t3S0^8,(MeoRe:QP;5uuQ3Pg8(u3');
define('LOGGED_IN_SALT',   'b>L1J%y=oS3GyX{{gUTk=EFwFgu4`>g*:sj#,MRR-LlB]ooN)!Y!=T^M2&6ONer7');
define('NONCE_SALT',       'vX^XR&=~RtINc<yG#%Zuj0<00rxW!0p{pZCmaV<I,ScWY}4XsXV{qqtqqDJPoHhg');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
