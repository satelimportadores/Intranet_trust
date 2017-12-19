<?php
include('class.conexion.php');





	if (isset($_REQUEST['tasa_usura'])) {

	$tasa_usura = $_REQUEST['tasa_usura'];
	date_default_timezone_set('America/Bogota');
	$fecha = date("Y-m-d");

			//Guardar comentario en la base de datos

				$con = new conexion;
				$query = "INSERT INTO intranet_trust_tasa_usura(tasa_usura, fecha) VALUES ('$tasa_usura', '$fecha')";
				$con->query($query) or trigger_error($con->error);

						$_SESSION["tasa_usura"]=$tasa_usura;

			//Guardar comentario en la base de datos
				}
			
	

?>