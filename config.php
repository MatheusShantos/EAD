<?php
require 'environment.php';

define("BASE", "http://localhost/ead/");

global $config;
$config = array();
if(ENVIRONMENT == 'development') {
	$config['dbname'] = 'ead';
	$config['host'] = 'localhost';
	$config['dbuser'] = 'root';
	$config['dbpass'] = '';
} else {
	$config['dbname'] = 'epiz_23085408_ead';
	$config['host'] = 'sql208.epizy.com';
	$config['dbuser'] = 'epiz_23085408';
	$config['dbpass'] = 'vtIRleQcP0L64c8';
}

?>