<?php 
include('class.conexion.php');
	$con = new conexion;
	$query = 'SELECT cardcode,cardname FROM intranet_trust_clientes';
	$Rclients = $con->query($query) or trigger_error($con->error);
	$con->close();
		echo "<option value=''>Seleccione un cliente</option>";
		while ($row = $Rclients->fetch_array()) {
			echo "<option value='$row[cardcode]'>$row[cardname]</option>";
		}	
?>

