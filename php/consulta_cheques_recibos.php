<?php 
include('class.conexion.php');
header('Content-Type: text/html; charset=utf-8');


	if (isset($_REQUEST['ultimo_recibo']) ) {

	$con = new conexion;
	$query = 'SELECT id FROM intranet_cheques_recibos ORDER BY id DESC LIMIT 1';
	$recibo = $con->query($query) or trigger_error($con->error);
	$row_cnt = $recibo->num_rows;
	//echo $row_cnt;
	$con->close();
		if ($row_cnt == 0) {
			echo '[{"0":"0","id":"0"}]';
		}else{
			while ($row = $recibo->fetch_array()) {
				$arreglo[] = $row;
				echo json_encode($arreglo);
			}
		}
	
	}



?>

