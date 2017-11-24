<!DOCTYPE html>
<html>
<head>
	<title>Cari Tunggakan</title>
</head>
<body>

<h2>
	Search Tunggakan
</h2>
<form method="post">
	nim : <input type="text" name="cari">
	<button type="submit">Search</button>
</form>
<?php
require_once('lib/nusoap.php');
$link = mysqli_connect('localhost','root','','db_keuangan');
mysqli_select_db($link, 'db_keuangan');
$url = "http://localhost/latihanku/rbk-latihan/webservice_2/mahasiswa_service.php";

if(isset($_POST['cari'])){
	try{
		$client = new nusoap_client($url);
		$err =$client->getError();
		if ($err){
			echo 'Constructor Error' .$err. '';
			$response = $client->call('get_list_mahasiswa', array('id'=>$_POST['cari']));
			if (($client->fault)) {
				echo 'Fault';
				print_r($response);
				echo '';
			}
			else{
				$err = $client->getError();
				if ($err) {
					echo 'Error' .$err. '';
				}
				else{
					foreach ($response as $mhs) {
						echo 'NIM : '.$mhs['nim'].'<br>';
						echo 'Nama : '.$mhs['name'].'<br>';
						$sql = mysqli_query($link, "SELECT ms.nama_tunggakan AS tgk, tr.nominal AS nom FROM ms_tunggakan AS ms JOIN tr_tunggakan AS tr ON ms.id_tunggakan = tr.id_tunggakan WHERE tr.nim = '$mhs[nim]'") or die (mysqli_error($link));
						echo "tunggakan Nominal : ";
						while ($data = mysqli_fetch_array($link, $sql)){
							echo ' '.$data['tgk'].' '.number_format($data['nom']).'';
						}
						echo '';
					}
				}
			}
		}
		echo '<h2> Request </h2>';
		echo '<pre>'.htmlspecialchars($client->request, ENT_QUOTES).'</pre>';
		echo '<h2> Response </h2>';
		echo '<pre>'.htmlspecialchars($client->response, ENT_QUOTES).'</pre>';
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