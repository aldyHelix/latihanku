<?php  


require_once('lib/nusoap.php');
$akademik_server = new nusoap_server();
$akademik_server->configureWSDL("Mahasiswa","urn:Mhsservice");
$akademik_server->register('get_list_mahasiswa',array("id"=>"xsd:string"), "urn:Mhsservice#get_list_mahasiswa");
$akademik_server->wsdl->addComplexType(
		"get_list_mahasiswa",
		"complexType",
		"struct",
		"all",
		"",
		array(
			"nim"=>array("id"=>"nim","type"=>"xsd:string"),
			"nama"=>array("nama"=>"nama","type"=>"xsd:string"),
			"alamat"=>array("alamat"=>"alamat","type"=>"xsd:string")
			
		)
	);

function get_list_mahasiswa($id){
	$conn = pg_connect("host=localhost dbname=postgres user=postgres password=7h1pitiuq") or die ('could not connect to PostgreSQL :'.pg_errormessage());
	$sql_db = "select * from mahasiswa where nim='$id'";
	$query_db = pg_query($conn, $sql_db) or die ('error Query : '.pg_errormessage());
	$rows = pg_num_rows($query_db);
	$no = 1;
	for($i=0;$i<$rows;$i++){
		$row = pg_fetch_row($query_db, $i);
		$items[] = array('nim'=>$row[0],'name'=>[1],'alamat'=>$row[2]);
	}
	pg_close($conn);

	return $items;	
}

get_list_mahasiswa(1);
$GLOBALS['HTTP_RAW_POST_DATA'] = file_get_contents ('php://input');
$HTTP_RAW_POST_DATA = $GLOBALS['HTTP_RAW_POST_DATA'];
$akademik_server->service($HTTP_RAW_POST_DATA);
?>