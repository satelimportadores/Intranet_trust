<?php 
include('class.conexion.php');
header('Content-Type: text/html; charset=utf-8');


	if (isset($_REQUEST['tasa_usura']) ) {

	$con = new conexion;
	$query = 'SELECT COUNT(*) as cantidad,tasa_usura FROM intranet_trust_tasa_usura WHERE MONTH(fecha) = MONTH(NOW())';
	$Rbancos = $con->query($query) or trigger_error($con->error);
	$con->close();
		while ($row = $Rbancos->fetch_array()) {
			$arreglo[] = $row;
		}
	echo json_encode($arreglo);
	}



?>

