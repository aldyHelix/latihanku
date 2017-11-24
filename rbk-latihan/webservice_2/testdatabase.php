<?php 

function get_list_mahasiswa($id){
	$appName = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
	$constr = "host=localhost port=5432 dbname=mahasiswa user=postgres password=7h1pitiuq ";
	$conn = pg_connect($constr) or die ('could not connect to PostgreSQL :'.pg_errormessage());
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

 ?>