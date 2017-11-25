<!DOCTYPE html>
<html>
<head>
	<title>Cari Tunggakan</title>
</head>
<body>

<h2>
	Search Tunggakan
</h2>
<form method="POST">
	NIM : <input type="text" name="cari">
	<input type="submit" name="submit" value="Search">
</form>
<?php
require_once('lib/nusoap.php');
$link = mysqli_connect('localhost','root','','db_keuangan');
$url = "http://localhost/latihanku/rbk-latihan/webservice_2/mahasiswa_service.php";


if(isset($_POST['submit'])){
	$nim = $_POST['cari'];
	$client = new nusoap_client($url);
	$err =$client->getError();
	$mhs = $client->call('get_list_mahasiswa', array("param"=>$nim));

	try{
		if ($err)
			echo 'Constructor Error' .$err. '';
			if ($client->fault) {
				echo 'Fault';
				print_r($mhs);
				echo '';
			}
			else{
				$err = $client->getError();
				if ($err) {
					echo 'Error' .$err. '';
				}
				else{
						echo 'NIM : '.$mhs['nim'].'<br>';
						echo 'Nama : '.$mhs['name'].'<br>';
						$sql = mysqli_query($link, "SELECT ms.nama_tunggakan AS tgk, tr.nominal AS nom FROM ms_tunggakan AS ms JOIN tr_tunggakan AS tr ON ms.id_tunggakan = tr.id_tunggakan WHERE tr.nim = '".$mhs['nim']."' ") or die (mysqli_error($link));
						echo "tunggakan Nominal : ";

						while ($data = mysqli_fetch_array($sql)){
							echo ' '.$data['tgk'].' '.number_format($data['nom']).'';
						}
						echo '';
					
				}
			}
	}
	catch(SoapFault $ex){
		echo 'Error : ';
		if ($ex -> getMessage() != ''){
			echo $ex -> getMessage();
		}
		else{
			echo $ex. "\n";
		}
	}
}
?>


</body>
</html>
