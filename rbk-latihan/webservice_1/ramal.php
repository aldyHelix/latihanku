<?php 
	function RamalZodiakInfo($ramalid){
		$link = mysqli_connect('localhost','root','','zodiak');
		$result = mysqli_query($link, "select * from ramal where nama_zodiak='".$ramalid."'");
		$indek = 0;
		while ($data = mysqli_fetch_array($result)) {
			$inforamal = array(
				"nama_zodiak"=>$data['nama_zodiak'],
				"tanggal"=>$data['tanggal'],
				"ramalan"=>$data['ramalan'],
				"karakter"=>$data['karakter'],
				"kesehatan"=>$data['kesehatan'],
				"angka_keberuntungan"=>$data['angka_keberuntungan']
			);
		}
		mysqli_close($link);
		return $inforamal;
	}

	require("lib/nusoap.php");
	$server = new soap_server();
	$server->configureWSDL("Ramalan","urn:RamalanService");
	$server->wsdl->addComplexType(
		"inforamal",
		"complexType",
		"struct",
		"all",
		"",
		array(
			"nama_zodiak"=>array("name"=>"nama_zodiak","type"=>"xsd:string"),
			"tanggal"=>array("name"=>"tanggal","type"=>"xsd:string"),
			"ramalan"=>array("name"=>"ramalan","type"=>"xsd:text"),
			"karakter"=>array("name"=>"karakter","type"=>"xsd:text"),
			"kesehatan"=>array("name"=>"kesehatan","type"=>"xsd:text"),
			"angka_keberuntungan"=>array("name"=>"angka_keberuntungan","type"=>"xsd:int")
		)
	);
	$server->register("RamalZodiakInfo",array("ramalid"=>"xsd:string"),array("return"=>"tns:inforamal"),"urn:RamalanService#RamalZodiakInfo");

$GLOBALS['HTTP_RAW_POST_DATA'] = file_get_contents ('php://input');
$HTTP_RAW_POST_DATA = $GLOBALS['HTTP_RAW_POST_DATA'];
$server->service($HTTP_RAW_POST_DATA);
?>