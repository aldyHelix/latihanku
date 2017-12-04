
<?php
//lengkapi
function USD($rupiah){
	return $rupiah / 13585;
}
function AUD($rupiah){
	return $rupiah / 10330;
}
function BND($rupiah){
	return $rupiah / 10036;
}
function CAD($rupiah){
	return $rupiah / 10685;
}
function CNF($rupiah){
	return $rupiah / 13716;
}
function CNH($rupiah){
	return $rupiah / 2050;
}
function CNY($rupiah){
	return $rupiah / 2049;
}
function DKK($rupiah){
	return $rupiah / 2158;
}
function EUR($rupiah){
	return $rupiah / 16058;
}
function GBP($rupiah){
	return $rupiah / 17989;
}
function HKD($rupiah){
	return $rupiah / 1739;
}
function JPY($rupiah){
	return ($rupiah / 12086)* 100;
}
require("lib/nusoap.php");
$server = new soap_server();
$server->configureWSDL("Kurs","urn:kursService");
$server->register("USD",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#USD");
$server->register("AUD",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#AUD");
$server->register("BND",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#BND");
$server->register("CAD",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#CAD");
$server->register("CNF",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#CNF");
$server->register("CNH",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#CNH");
$server->register("CNY",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#CNY");
$server->register("DKK",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#DKK");
$server->register("EUR",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#EUR");
$server->register("GBP",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#GBP");
$server->register("JPY",array("rupiah"=>"xsd:int"), array("return"=>"xsd:float"),"urn:kursService","urn:kursService#JPY");

$GLOBALS['HTTP_RAW_POST_DATA'] = file_get_contents ('php://input');
$HTTP_RAW_POST_DATA = $GLOBALS['HTTP_RAW_POST_DATA'];
$server->service($HTTP_RAW_POST_DATA);
?>