<?php
//lengkapi
 
function kurs($dollar){
	return 13000 * $dollar;
}
require("lib/nusoap.php");
$server = new soap_server();
$server->configureWSDL("Kurs","urn:kursService");
$server->register("kurs",array("dollar"=>"xsd:int"), array("return"=>"xsd:long"),"urn:kursService","urn:kursService#kurs");
$GLOBALS['HTTP_RAW_POST_DATA'] = file_get_contents ('php://input');
$HTTP_RAW_POST_DATA = $GLOBALS['HTTP_RAW_POST_DATA'];
$server->service($HTTP_RAW_POST_DATA);
?>