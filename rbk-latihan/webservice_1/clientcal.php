<!DOCTYPE html>
<html>
<head>
	<title>Calculator</title>
</head>
<body>
	<form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
		<table border=0 width="40%">
			<td>
				<tr>
					<td> Angka Pertama :</td>
					<td><input type="text" name="txta"></td>
				</tr>
				<tr>
					<td> Angka kedua :</td>
					<td><input type="text" name="txtb"></td>
				</tr>
			</td>
		</table>
		<input type="submit" name="submit" value="Hitung">
	</form>
	<?php 
	require("lib/nusoap.php"); 
	$url = "http://localhost/latihanku/rbk-latihan/webservice_1/calculator.php";
	if(isset($_POST['submit']))
	{
		$client = new nusoap_client($url);
		$a1 = $_POST['txta'];
		$a2	= $_POST['txtb'];
		$c = $client->call('tambah',array("a"=>$a1, "b"=>$a2));
		$d = $client->call('kurang',array("a"=>$a1, "b"=>$a2));
		$e = $client->call('kali',array("a"=>$a1, "b"=>$a2));
		$f = $client->call('bagi',array("a"=>$a1, "b"=>$a2));
		$g = $client->call('pangkat',array("a"=>$a1, "b"=>$a2));

		$err = $client->getError();
		if ($err) {
			echo "<p><b>ERROR !".$client->getError()."</p></b>";
		}
		else{
			echo "<p><b> Pengjumlahan dari : " .$a1. " dan " .$a2. " = " .$c. "</p></b>";
			echo "<p><b> Pengurangan dari : " .$a1. " dan " .$a2. " = " .$d. "</p></b>";
			echo "<p><b> Pengkalian dari : " .$a1. " dan " .$a2. " = " .$e. "</p></b>";
			echo "<p><b> Pembagian dari : " .$a1. " dan " .$a2. " = " .$f. "</p></b>";
			echo "<p><b> Perpangkatan dari : " .$a1. " dan " .$a2. " = " .$g. "</p></b>";
		}
		echo '<h2> Request </h2>';
		echo '<pre>'.htmlspecialchars($client->request, ENT_QUOTES).'</pre>';
		echo '<h2> Response </h2>';
		echo '<pre>'.htmlspecialchars($client->response, ENT_QUOTES).'</pre>';		
	}
	?>
</body>
</html>