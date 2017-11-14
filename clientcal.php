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
		<input type="submit" name="submit" value="Jumlah">
	</form>
	<?php 
	require("lib/nusoap.php"); 
	$url = "http://localhost/rbk-latihan/websevice_1/calculator.php";
	if(isset($_POST['submit']))
	{
		$client = new nusoap_client($url);
		$a1 = $_POST['txta'];
		$a2	= $_POST['txtb'];
		$result = $client->call('calculator',array("a"=>$a1, "b"=>$a2));
		$err = $client->getError();
		if ($err) {
			echo "<p><b>ERROR !".$client->getError()."</p></b>";
		}
		else{
			echo "<p><b> Jumlah dari : " .$a1. " dan " .$a2. " = " .$result. "</p></b>";
		}
		echo '<h2> Request </h2>';
		echo '<pre>'.htmlspecialchars($client->request, ENT_QUOTES).'</pre>';
		echo '<h2> Response </h2>';
		echo '<pre>'.htmlspecialchars($client->response, ENT_QUOTES).'</pre>';		
	}
	?>
</body>
</html>