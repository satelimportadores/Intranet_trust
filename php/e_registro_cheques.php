<?php 

session_start();

function normaliza ($cadena){
    $originales = 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞ
ßàáâãäåæçèéêëìíîïðñòóôõöøùúûýýþÿŔŕ';
    $modificadas = 'AAAAAAACEEEEIIIIDNOOOOOOUUUUY
bsaaaaaaaceeeeiiiidnoooooouuuyybyRr';
    $cadena = utf8_decode($cadena);
    $cadena = strtr($cadena, utf8_decode($originales), $modificadas);
    return utf8_encode($cadena);
}

date_default_timezone_set('America/Bogota');
include('class.conexion.php');
$con = new conexion;
if (isset($_REQUEST['envio'])) {
	$tasa_usura = $_SESSION["tasa_usura"];
	$fecha =  date("Y-m-d H:i:s");
	$banco = $_REQUEST['bancos'];
	$cheque = $_REQUEST['num_cheq'];
	$cheque = strtoupper($cheque);
	$beneficiario = $_REQUEST['benef'];
	$beneficiario = strtoupper($beneficiario);

	$monto = $_REQUEST['monto'];
	$monto =  substr($monto,0,-2);
	$monto  =preg_replace("/[^0-9]/", "", $monto);

	$fecha_cheq = $_REQUEST['fecha_cheq'];
	$fecha_con = $_REQUEST['fecha_con'];
	$endoso = $_REQUEST['endoso'];
	$endoso = strtoupper($endoso);
	//tabla detalles
		$int = $_REQUEST['interes'];
		$dias = $_REQUEST['num_dias'];
		$val_int = $_REQUEST['val_int'];
	//tabla detalles

	$val_cheq = $_REQUEST['val_cheq'];
	$resp = $_REQUEST['resp'];

	$fondos = $_REQUEST['fondos'];

	if (isset($_REQUEST['banco_gira'])) {
		$banco_gira = $_REQUEST['banco_gira'];
	}else{
		$banco_gira = null;
	}

	if (isset($_REQUEST['cuenta_gira'])) {
		$cuenta_gira = $_REQUEST['cuenta_gira'];
	}else{
		$cuenta_gira = null;
	}



	$tmpFilePath = $_FILES['file']['tmp_name'][0];
	if ($tmpFilePath != '') {
			$file = $_FILES['file'];
			$ex = explode(".",$file['name'][0]);
			$ext = (count($ex))-1;
			$archivo = "$cheque-$endoso-$fecha_cheq.$ex[$ext]";
			$archivo = normaliza($archivo);
			$dir = "../archivos_cheques/";
			$dir = $dir.$archivo;
			move_uploaded_file($file['tmp_name'][0], $dir);
	}

	//consultar numero de recibo
		$recibosql = 'SELECT id FROM intranet_cheques_recibos ORDER BY id DESC LIMIT 1';
			$recibo = $con->query($recibosql) or trigger_error($con->error);
			$row_cnt = $recibo->num_rows;
				if ($row_cnt == 0) {
					$id_recibo = 1;
				}else{
					$row = $recibo->fetch_array();
					$id_recibo = intval($row['id']+1);
					echo $id_recibo;
				}



	//consultar numero de recibo



	//insertar en la base de datos
			if (isset($archivo)) {
				$query01 = "INSERT INTO intranet_cheques_info(fecha, banco_emisor, numero_cheque, beneficiario,  fecha_cheque, endoso, responsable,  estado, adjunto, banco_gira, cuenta_gira,tipo_fondos,tasa_usura,id_recibo) VALUES ('$fecha',$banco,'$cheque','$beneficiario','$fecha_con','$endoso','$resp','por_consig', '$archivo', '$banco_gira', '$cuenta_gira','$fondos','$tasa_usura','$id_recibo')";
			}else{
				$query01 = "INSERT INTO intranet_cheques_info(fecha, banco_emisor, numero_cheque, beneficiario,  fecha_cheque, endoso, responsable,  estado, adjunto, banco_gira, cuenta_gira,tipo_fondos,tasa_usura,id_recibo) VALUES ('$fecha',$banco,'$cheque','$beneficiario','$fecha_con','$endoso','$resp','por_consig', '', '$banco_gira', '$cuenta_gira','$fondos','$tasa_usura','$id_recibo')";
			}
			
		$con->query($query01) or trigger_error($con->error);

			$idinsertado = $con->insert_id;
		$query02 = "INSERT INTO intranet_cheques_info_detalle( id_cheque, fecha_cheque, interes, dias, valor_interes, monto, valor_girar,activo,tipo_fondos) VALUES ('$idinsertado','$fecha_con','$int','$dias','$val_int', '$monto', '$val_cheq',1,'$fondos')";
		$con->query($query02) or trigger_error($con->error);
	//insertar en la base de datos


				//guardar numero de recibo en la base de datos
					$guardar_recibo = "INSERT INTO intranet_cheques_recibos (id, cheque_id, fecha_recibo) VALUES ('$id_recibo','$idinsertado','$fecha') ";
					$con->query($guardar_recibo) or trigger_error($con->error);
				//guardar numero de recibo en la base de datos

		$con->close();

header('Location: ../inicio.php');
}
	
?>


