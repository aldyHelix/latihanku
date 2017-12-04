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

	while ($row = pg_fetch_row($query_db)) {
		echo "nim : $row[0] ";
		echo "<br>";
		echo "Nama : $row[1]";
		echo "<br>";
		echo "Alamat : $row[2]";
	}
	pg_close($conn);
	return $infomhs;	
}
$link = mysqli_connect('localhost','root','','db_keuangan');
$sql = mysqli_query($link, 'SELECT ms.nama_tunggakan AS tgk, tr.nominal AS nom FROM ms_tunggakan AS ms JOIN tr_tunggakan AS tr ON ms.id_tunggakan = tr.id_tunggakan WHERE tr.nim = 1 ') or die (mysqli_error($link));
			echo "tunggakan Nominal : ";

				while ($data = mysqli_fetch_array($sql)){
					echo ' '.$data['tgk'].' '.number_format($data['nom']).'';
				}
get_list_mahasiswa(1);

 ?>