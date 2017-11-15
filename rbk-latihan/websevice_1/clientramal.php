<!DOCTYPE html>
<html>
<head>
	<title>Ramalan Zodiak</title>
</head>
<body>
	<form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
		<table border="0" width="40%">
			<td>
				<tr>
					<td>Masukkan Nama anda : </td>
					<td><input type="text" name="nama"></td>
				</tr>
				<tr>
					<td>Masukkan Tanggal lahir : </td>
					<td><select name="tanggal" size="1">
                        <option disabled selected>  </option>
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select></td>
				</tr>
				<tr>
					<td>Masukkan Bulan Lahir : </td>
					<td><select name="bulan">
				    <option value=''>--bulan--</option>
				    <option selected value='1'>Janaury</option>
				    <option value='2'>February</option>
				    <option value='3'>March</option>
				    <option value='4'>April</option>
				    <option value='5'>May</option>
				    <option value='6'>June</option>
				    <option value='7'>July</option>
				    <option value='8'>August</option>
				    <option value='9'>September</option>
				    <option value='10'>October</option>
				    <option value='11'>November</option>
				    <option value='12'>December</option>
				    </select></td>
				</tr>
				<tr>
					<td>Masukkan Tahun : </td>
					<td><input type="select" name="tahun">
                	</td>
				</tr>
			</td>
		</table>
		<input type="submit" name="submit" value="Ramal Aku">
	</form>
	<?php 
		require("lib/nusoap.php");
		$url = "http://localhost/rbk-latihan/websevice_1/ramal.php";
	    if (isset($_POST['submit'])) {
	    	$nama = $_POST['nama'];
			$bulan = $_POST['bulan'];
       	 	$tanggal = $_POST['tanggal'];
        	$tahun = $_POST['tahun'];

	        function zodiac ( $bulan, $tanggal, $tahun){ 
		        $zodiac = ""; 
				if     ( ( $bulan == 3 && $tanggal > 20 ) || ( $bulan == 4 && $tanggal < 20 ) ) { $zodiac = "Aries"; } 
		        elseif ( ( $bulan == 4 && $tanggal > 19 ) || ( $bulan == 5 && $tanggal < 21 ) ) { $zodiac = "Taurus"; } 
		        elseif ( ( $bulan == 5 && $tanggal > 20 ) || ( $bulan == 6 && $tanggal < 21 ) ) { $zodiac = "Gemini"; } 
		        elseif ( ( $bulan == 6 && $tanggal > 20 ) || ( $bulan == 7 && $tanggal < 23 ) ) { $zodiac = "Cancer"; } 
		        elseif ( ( $bulan == 7 && $tanggal > 22 ) || ( $bulan == 8 && $tanggal < 23 ) ) { $zodiac = "Leo"; } 
		        elseif ( ( $bulan == 8 && $tanggal > 22 ) || ( $bulan == 9 && $tanggal < 23 ) ) { $zodiac = "Virgo"; } 
		        elseif ( ( $bulan == 9 && $tanggal > 22 ) || ( $bulan == 10 && $tanggal < 23 ) ) { $zodiac = "Libra"; } 
		        elseif ( ( $bulan == 10 && $tanggal > 22 ) || ( $bulan == 11 && $tanggal < 22 ) ) { $zodiac = "Scorpio"; } 
		        elseif ( ( $bulan == 11 && $tanggal > 21 ) || ( $bulan == 12 && $tanggal < 22 ) ) { $zodiac = "Sagittarius"; } 
		        elseif ( ( $bulan == 12 && $tanggal > 21 ) || ( $bulan == 1 && $tanggal < 20 ) ) { $zodiac = "Capricorn"; } 
		        elseif ( ( $bulan == 1 && $tanggal > 19 ) || ( $bulan == 2 && $tanggal < 19 ) ) { $zodiac = "Aquarius"; } 
		        elseif ( ( $bulan == 2 && $tanggal > 18 ) || ( $bulan == 3 && $tanggal < 21 ) ) { $zodiac = "Pisces"; } 
				
				echo $zodiac;

				return $zodiac; 
		    }
		    $zodiac = zodiac($bulan, $tanggal, $tahun);

		    $client = new nusoap_client($url);
		    $client->soap_defencoding = 'UTF-8';
		    $client->decode_utf8 = false;
		    $result = $client->call('RamalZodiakInfo', array('ramalid' => $zodiac));
		    $err = $client->getError();
		    if ($err) {
				echo "<p><b>ERROR !".$client->getError()."</p></b>";
			}

			else{
				if ($result != null) {
					echo "<p><b>Hasil Ramal ".$_POST['nama'].": </b></p>";
					echo "lahir : " .$tanggal." " .$_POST['bulan']. " ".$tahun. "<br>";
					echo "<p>
						<b> Zodiak <b> : ".$result['nama_zodiak']."<br>
						<b> Tanggal <b> : ".$result['tanggal']."<br>
						<b> Ramalan <b> : ".$result['ramalan']."<br>
						<b> Karakter <b> : ".$result['karakter']."<br>
						<b> Kesehaan <b> : ".$result['kesehatan']."<br>
						<b> Angka Keberuntungan <b> : ".$result['angka_keberuntungan']."</p>";
				}
				else{
					echo "<p><b>Ramalan Tidak ada</b></p>";
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