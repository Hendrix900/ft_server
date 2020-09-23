<?php
/**
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'wordpress');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'root');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', '');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'localhost');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '3YQ&C&i!@3SaH0ZhLVZ*<3mhO,M:7xUpku|0nF?Cb*@=HA->>~x;i$oa..twaXrU');
define('SECURE_AUTH_KEY',  '#)&}o7i-)1nMK[+>XMvrVP^D>1P(|Jp/KJOZZ TB;v@R2pi~W?H/[8($.f%BzUsJ');
define('LOGGED_IN_KEY',    'hN1RDuc-LC8E5M<fC%]>;U`87#KOrh,gE:C&K3g.]>>8_M{mt{ t S*|[&R^o1:H');
define('NONCE_KEY',        '/]J16eO7SF4Ve/;AZ 4b-FEstJ5P0B/ve]cCbX8JjWqhmw&3}fR^nd|VF{]2`fJE');
define('AUTH_SALT',        'JY2?V!b57TK?7ZxY_)#TJ]7|+b#Ap*&Pf?kQ|/Za3[*XJAI*%qG`g}}`cC|@X3QH');
define('SECURE_AUTH_SALT', '9bm?fx3jPak7cn_Z<p9;m{C>dAyRI9w>g9Y$!+pE+R$git:&xeKX,Utc:AtUP!$}');
define('LOGGED_IN_SALT',   '[;@.T6e/w<9`Na4{%0yk`V_+On3qxfk#>]>z5JEnx(}Vn}K94M2]t04`-L?G_Sz/');
define('NONCE_SALT',       'sWx$dMTTRX~7|1v<WrrB!wwn-_lB% 1cX8+S`Ds>n9ewxt^-Ef(k]@o{Aku$]g5@');

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix = 'wp_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

