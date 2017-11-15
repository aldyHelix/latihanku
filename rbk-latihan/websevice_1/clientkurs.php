<!DOCTYPE html>
<html>
<head>
	<title>Kurs</title>
</head>
<body>
	<form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
		<table border="0" width="40%">
			<td>
				<tr>
					<td>Dollar : </td>
					<td><input type="text" name="txtdollar"></td>
				</tr>
			</td>
		</table>
		<input type="submit" name="submit" value="Jumlah">
	</form>
<?php 
	require("lib/nusoap.php"); 
	$url = "http://localhost/rbk-latihan/websevice_1/kurs.php";
	if(isset($_POST['submit']))
	{
		$client = new nusoap_client($url);
		$dollar = $_POST['txtdollar'];
		$result = $client->call('kurs',array("dollar"=>$dollar));
		$err = $client->getError();
		if ($err) {
			echo "<p><b>ERROR !".$client->getError()."</p></b>";
		}
		else{
			echo "<p><b> rupiah dari " .$dollar. " adalah " .$result. "</p></b>";
		}
		echo '<h2> Request </h2>';
		echo '<pre>'.htmlspecialchars($client->request, ENT_QUOTES).'</pre>';
		echo '<h2> Response </h2>';
		echo '<pre>'.htmlspecialchars($client->response, ENT_QUOTES).'</pre>';		
	}
 ?>
</body>
</html>