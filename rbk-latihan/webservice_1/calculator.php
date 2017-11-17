<?php
//lengkapi
function power($a,$b){
		$nc = pow($a, $b);
	return $nc;
	}
function kurang($a,$b){
		$d = $a - $b;
	return $d;
}
function kali($a,$b){
		$e = $a * $b;
	return $e;
}
function bagi($a,$b){
		$f = $a / $b;
	return $f;
}
function pangkat($a,$b){
		$g = $a % $b;
	return $g;
}
function tambah($a,$b){
		$c = $a + $b;
	return $c;
}
require("lib/nusoap.php");
$server = new soap_server();
$server->configureWSDL("calculator","urn:calculatorService");

$server->register("tambah", array("a"=>"xsd:int" ,"b"=>"xsd:int") ,array("c"=>"xsd:long"),  "urn:calculatorService#tambah");
$server->register("kurang", array("a"=>"xsd:int" ,"b"=>"xsd:int") , array("d"=>"xsd:long"), "urn:calculatorService#kurang");
$server->register("kali", array("a"=>"xsd:int" ,"b"=>"xsd:int") , array("e"=>"xsd:long"), "urn:calculatorService#kali");
$server->register("bagi", array("a"=>"xsd:int" ,"b"=>"xsd:int") , array("f"=>"xsd:long"), "urn:calculatorService#bagi");
$server->register("pangkat", array("a"=>"xsd:int" ,"b"=>"xsd:int") , array("g"=>"xsd:long"), "urn:calculatorService#pangkat");
$server->register("power", array("a"=>"xsd:int" ,"b"=>"xsd:int") , array("nc"=>"xsd:long"), "urn:calculatorService#power");

$GLOBALS['HTTP_RAW_POST_DATA'] = file_get_contents ('php://input');
$HTTP_RAW_POST_DATA = $GLOBALS['HTTP_RAW_POST_DATA'];
$server->service($HTTP_RAW_POST_DATA);
?>