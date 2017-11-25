<?php  
function get_list_mahasiswa($param){
	$appName = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
	$constr = "host=localhost port=5433 dbname=mahasiswa user=postgres password=7h1pitiuq ";
	$conn = pg_connect($constr) or die ('could not connect to PostgreSQL :'.pg_errormessage());
	$sql_db = "select * from mahasiswa.mahasiswa where nim='".$param."'";
	$query_db = pg_query($conn, $sql_db) or die ('error Query : '.pg_errormessage());
	$rows = pg_num_rows($query_db);
	$no = 1;
	for($i=0;$i<$rows;$i++){
		$row = pg_fetch_array($query_db, $i);
		$infomhs[] = array(
			'nim'=>$row[0],
			'nama'=>$row[1],
			'alamat'=>$row[2]
		);
	}
	//while ($data = pg_fetch_array($query_db)) {
	//	$infomhs[] = array(
	//		"nim"=>$data['nim'],
	//		"nama"=>$data['nama'],
	//		"alamat"=>$data['alamat']
	//	);
	//}
	pg_close($conn);
	return $infomhs;	
}


require_once('lib/nusoap.php');
$akademik_server = new nusoap_server();
$akademik_server->configureWSDL('get_list_mahasiswa',"urn:mhsService");
$akademik_server->wsdl->addComplexType(
		"infomhs",
		"complexType",
		"struct",
		"all",
		"",
		array(
			"nim"=>array("name"=>"nim","type"=>"xsd:string"),
			"nama"=>array("name"=>"nama","type"=>"xsd:string"),
			"alamat"=>array("name"=>"alamat","type"=>"xsd:string")
		)
	);
$akademik_server->register("get_list_mahasiswa",array("param"=>"xsd:string"),array("return"=>"tns:infomhs"),"urn:mhsService","urn:mhsService#get_list_mahasiswa");


$GLOBALS['HTTP_RAW_POST_DATA'] = file_get_contents ('php://input');
$HTTP_RAW_POST_DATA = $GLOBALS['HTTP_RAW_POST_DATA'];
$akademik_server->service($HTTP_RAW_POST_DATA);
?>