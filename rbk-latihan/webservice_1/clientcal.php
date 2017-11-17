<!DOCTYPE html>
<html lang="en">
<head>
	<title>Advance Calculator</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://localhost/latihanku/rbk-latihan/assets/css/bootstrap.min.css">
	<script src="http://localhost/latihanku/rbk-latihan/assets/js/jquery.js"></script>
	<script src="http://localhost/latihanku/rbk-latihan/assets/js/bootstrap.min.js"></script>
</head>
<body>

	<?php 
		require("lib/nusoap.php"); 
		$url = "http://localhost/latihanku/rbk-latihan/webservice_1/calculator.php";
	 ?>
	 <div class="container">
	 	<div class="row">
	 		<div class="col-sm-8">
	 			<br>
	 						<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#BasicCalculator">Basic Calculator</button>

	 						<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#PowCalculator">Pow (pangkat) Calculator</button>

	 			<br>
	 		</div>
	 		<!-- Modal Pi -->
			<div id="PowCalculator" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Power Calculator (pangkat)</h4>
			      </div>
			      <div class="modal-body">
					<form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
						<table border=0 width="40%">
							<td>
								<tr>
									<td> Angka Bilangan  : </td>
									<td><input type="text" name="nil1"></td>
								</tr>
								<tr>
									<td> Angka Pangkat : </td>
									<td><input type="text" name="nil2"></td>
								</tr>
							</td>
						</table>
						<input type="submit" name="pang" value="Hitung">
					</form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
			<?php 
				if(isset($_POST['pang']))
				{
					$client = new nusoap_client($url);
					$n1 = $_POST['nil1'];
					$n2	= $_POST['nil2'];
					$nc = $client->call('power',array("a"=>$n1, "b"=>$n2));

					$err = $client->getError();
					if ($err) {
						echo "<p><b>ERROR !".$client->getError()."</p></b>";
					}
					else{
						echo '<div class="panel panel-default">';
						echo '<div class="panel-body"></div>';
						echo '<div class="panel-footer">';
						echo '<br>';
						echo "<p><b> Hasil dari : " .$n1. " pangkat " .$n2. " = " .$nc. "</p></b>";
						echo '</div>';
						echo '</div>';
					}
					echo '<h2> Request </h2>';
					echo '<pre>'.htmlspecialchars($client->request, ENT_QUOTES).'</pre>';
					echo '<h2> Response </h2>';
					echo '<pre>'.htmlspecialchars($client->response, ENT_QUOTES).'</pre>';
				}
	 			?>
			<!-- Modal Basic-->
			<div id="BasicCalculator" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Basic Calculator</h4>
			      </div>
			      <div class="modal-body">
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
						<input type="submit" name="basic" value="Hitung">
					</form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
			<?php 
				if(isset($_POST['basic']))
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
						echo '<div class="panel panel-default">';
						echo '<div class="panel-body"></div>';
						echo '<div class="panel-footer">';
						echo '<br>';
						echo "<p><b> Pengjumlahan dari : " .$a1. " dan " .$a2. " = " .$c. "</p></b>";
						echo "<p><b> Pengurangan dari : " .$a1. " dan " .$a2. " = " .$d. "</p></b>";
						echo "<p><b> Pengkalian dari : " .$a1. " dan " .$a2. " = " .$e. "</p></b>";
						echo "<p><b> Pembagian dari : " .$a1. " dan " .$a2. " = " .$f. "</p></b>";
						echo "<p><b> Perpangkatan dari : " .$a1. " dan " .$a2. " = " .$g. "</p></b>";
						echo '</div>';
						echo '</div>';
					}
							
				?>
	 		<div class="col-sm-8">
	 			<?php 
					echo '<h2> Request </h2>';
					echo '<pre>'.htmlspecialchars($client->request, ENT_QUOTES).'</pre>';
					echo '<h2> Response </h2>';
					echo '<pre>'.htmlspecialchars($client->response, ENT_QUOTES).'</pre>';
				}
	 			?>
	 		</div>
	 	</div>
	 	
	 </div>
	

	<!-- PHP SCRIPT HERE -->
	
</body>
</html>