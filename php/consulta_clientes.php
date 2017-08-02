<?php 
include('class.conexion.php');
	
	if (isset($_REQUEST['cardcode']) && $_REQUEST['cardcode'] != '') {
		$cardcode = $_REQUEST['cardcode'];
			//consulta
	$con = new conexion;
	$query = "SELECT * FROM intranet_trust_clientes WHERE cardcode = \"$cardcode\"";
	$datos_client = $con->query($query) or trigger_error($con->error);
	$Ncons_client = $datos_client->num_rows;
	$con->close();

			if ($Ncons_client != 0) {
					while ($row = $datos_client->fetch_array()) {
						$arreglo[] = array_map('utf8_encode', $row);
						echo json_encode($arreglo);
					}
				}else{
					echo 1;
				}

			//consulta
	}else{
		echo 2;
	}

	
?>


