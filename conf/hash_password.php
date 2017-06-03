<?php
define('PHPWG_ROOT_PATH','./');

include(PHPWG_ROOT_PATH . 'include/config_default.inc.php');
@include(PHPWG_ROOT_PATH. 'local/config/config.inc.php');
include(PHPWG_ROOT_PATH . 'include/functions.inc.php');

print $conf['password_hash']($argv[1]);
?>
