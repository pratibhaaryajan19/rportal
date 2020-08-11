<?php
error_reporting(0);
ini_set('session.gc_max_lifetime', 0);
ini_set('session.gc_probability', 1);
ini_set('session.gc_divisor', 1);
//session_destroy();
echo "Logging out...";
header('Refresh: 1; URL = index.html');

?>