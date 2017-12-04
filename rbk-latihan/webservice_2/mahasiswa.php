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
	NIM : <input type="text" name="name">
	<input type="submit" value="Search">
</form>
<?php
require_once('lib/nusoap.php');
$link = mysqli_connect('localhost','root','','db_keuangan');
$url = "http://localhost/latihanku/rbk-latihan/webservice_2/mahasiswa_service.php";


if(isset($_POST['name'])){
	$nim = $_POST['name'];
	$client = new nusoap_client($url);
	$err =$client->getError();
	$mhs =$client->call('get_list_mahasiswa', array('param'=>$nim));

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
					if (is_array($mhs)) {
						echo 'NIM : '.$mhs[0].'<br>';
						echo 'Nama : '.$mhs['nama'].'<br>';
						echo "tunggakan Nominal : ";
						$sql = mysqli_query($link, 'SELECT ms.nama_tunggakan AS tgk, tr.nominal AS nom FROM ms_tunggakan AS ms JOIN tr_tunggakan AS tr ON ms.id_tunggakan = tr.id_tunggakan WHERE tr.nim = '.$mhs['nim'].' ') or die (mysqli_error($link));
						while ($data = mysqli_fetch_array($sql)){
							echo ' '.$data['tgk'].' '.number_format($data['nom']).'';
						}
						echo '';
					
				}
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
	echo '<h2> Request </h2>';
		echo '<pre>'.htmlspecialchars($client->request, ENT_QUOTES).'</pre>';
		echo '<h2> Response </h2>';
		echo '<pre>'.htmlspecialchars($client->response, ENT_QUOTES).'</pre>';		
}

?>


</body>
</html>
