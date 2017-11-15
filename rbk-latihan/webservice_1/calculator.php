<?php
function calculator($a,$b){
	$c = $a + $b;
	return $c;
}
require("lib/nusoap.php");
$server = new soap_server();
$server->configureWSDL("calculator","urn:calculatorService");
$server->register("calculator", array("a"=>"xsd:int" ,"b"=>"xsd:int"), array("c"=>"xsd:long"), "urn:calculatorService#calculator");
$GLOBALS['HTTP_RAW_POST_DATA'] = file_get_contents ('php://input');
$HTTP_RAW_POST_DATA = $GLOBALS['HTTP_RAW_POST_DATA'];
$server->service($HTTP_RAW_POST_DATA);
?>