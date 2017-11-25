<!DOCTYPE html>
<html lang="en">
<head>
	<title>Kurs</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://localhost/latihanku/rbk-latihan/assets/css/bootstrap.min.css">
	<script src="http://localhost/latihanku/rbk-latihan/assets/js/jquery.js"></script>
	<script src="http://localhost/latihanku/rbk-latihan/assets/js/bootstrap.min.js"></script>
</head>
<body>
	<?php 
		require("lib/nusoap.php"); 
		$url = "http://localhost/latihanku/rbk-latihan/webservice_1/kurs.php";
	 ?>
	<div class="container">
	<form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
		<div class="row">
					<div class="col-md-6">
					<h4>Input Rupiah : </h4></div></div>
					<div class="col-md-6">
						<div class="form-group">
					<input type="text" class="form-control" name="txtdollar"></div></div>
					<div class="col-md-6">
						<div class="form-group">
					<select class="form-control" name="conversi">
						<option value="USD">USD</option>
						<option value="AUD">AUD</option>
						<option value="BND">BND</option>
						<option value="CAD">CAD</option>
						<option value="CNF">CNF</option>
						<option value="CNH">CNH</option>
						<option value="CNY">CNY</option>
						<option value="DKK">DKK</option>
						<option value="EUR">EUR</option>
						<option value="GBP">GBP</option>
						<option value="HKD">HKD</option>
						<option value="JPY">JPY</option>>
					</select>
				</div></div>
			<input class="btn" type="submit" name="submit" value="Jumlah">
		</div>
		</form>
	</div>
<?php 
	if(isset($_POST['submit']))
	{
		$client = new nusoap_client($url);
		$rupiah = $_POST['txtdollar'];
		$conv = $_POST['conversi'];
		$result = $client->call($conv, array("rupiah"=>$rupiah));
		$err = $client->getError();
		if ($err) {
			echo "<p><b>ERROR !".$client->getError()."</p></b>";
		}
		else{
			echo "<div class='container'> <br> <p><b> Rp " .$rupiah. " ke ".$conv." adalah " .$result. "</p></b> </div>";
		}
		echo '<h2> Request </h2>';
		echo '<pre>'.htmlspecialchars($client->request, ENT_QUOTES).'</pre>';
		echo '<h2> Response </h2>';
		echo '<pre>'.htmlspecialchars($client->response, ENT_QUOTES).'</pre>';		
	}
 ?>
</body>
</html>