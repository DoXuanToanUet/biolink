<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'biolink' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '&f`E}`U=TFj5jhUE$Ikyc4V?F=WrQl>Kvah>_$n C^Qc>!A#|0>R3Yq-@SpY7@MT' );
define( 'SECURE_AUTH_KEY',  'DjuePdgKMW!M>d>v)rFHVA~CwB!`)r(&vGgWK;3,)_M-Xp`|*G1Y&}Ri[pfSiD5K' );
define( 'LOGGED_IN_KEY',    '8)q $Ffo*fqWSK6s<sx4KDQKb|HWb,$G1|Tm,ko3!l&o5Skgg&aVjQrr;yMH;c{u' );
define( 'NONCE_KEY',        'S=EjJv-mN]&frs d*8vx47fN#`)HE<HLxp@tHs~=@&}CWsP(zN^BtK &?^.~Vi}W' );
define( 'AUTH_SALT',        'w& v@yAon>dOEI,p2$vj(M[qY*;W;YxvbqM&Zm]w@ks<T|{J(~qMXor>ArdZMK&Q' );
define( 'SECURE_AUTH_SALT', '%9tnob:[`duwz|X),ts*L9Gx~dJUfX`X,Lz-Q{ql7E*{.%A:K*q[t2 8jy F44S,' );
define( 'LOGGED_IN_SALT',   '@@~=E.W?Sb_AcZiKsQPvz0>rxq2.cmw/Sq)on9Lbg.CqiS8i$-@>Rh?C#[ddA%yx' );
define( 'NONCE_SALT',       'SH[Ir/dud_K}S_he 0}acd]WUimEy?fA20`wzp{77NMjlZIGY`|dM%bJv_mU$[S/' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
define( 'ALLOW_UNFILTERED_UPLOADS', true );