<?php 


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
	$fecha =  date("Y-m-d H:i:s");
	$banco = $_REQUEST['bancos'];
	$cheque = $_REQUEST['num_cheq'];
	$cheque = strtoupper($cheque);
	$beneficiario = $_REQUEST['benef'];
	$beneficiario = strtoupper($beneficiario);
	$monto = $_REQUEST['monto'];
	$fecha_cheq = $_REQUEST['fecha_cheq'];
	$endoso = $_REQUEST['endoso'];
	$endoso = strtoupper($endoso);
	//tabla detalles
		$int = $_REQUEST['interes'];
		$dias = $_REQUEST['num_dias'];
		$val_int = $_REQUEST['val_int'];
	//tabla detalles

	$val_cheq = $_REQUEST['val_cheq'];
	$file = $_FILES['file'];
	$resp = $_REQUEST['resp'];
	$ex = explode(".",$file['name'][0]);
	$ext = (count($ex))-1;
	$archivo = "$cheque-$endoso-$fecha_cheq.$ex[$ext]";
	$archivo = normaliza($archivo);
	$dir = "../archivos_cheques/";
	$dir = $dir.$archivo;
	$banco_gira = $_REQUEST['banco_gira'];
	$cuenta_gira = $_REQUEST['cuenta_gira'];

	if(move_uploaded_file($file['tmp_name'][0], $dir)){	
		$query01 = "INSERT INTO intranet_cheques_info(fecha, banco_emisor, numero_cheque, beneficiario,  fecha_cheque, endoso, responsable,  estado, adjunto, banco_gira, cuenta_gira) VALUES ('$fecha',$banco,'$cheque','$beneficiario','$fecha_cheq','$endoso','$resp','por_consig', '$archivo', '$banco_gira', '$cuenta_gira')";
		$con->query($query01) or trigger_error($con->error);
			$idinsertado = $con->insert_id;
		$query02 = "INSERT INTO intranet_cheques_info_detalle( id_cheque, fecha_cheque, interes, dias, valor_interes, monto, valor_girar) VALUES ('$idinsertado','$fecha','$int','$dias','$val_int', '$monto', '$val_cheq')";
		$con->query($query02) or trigger_error($con->error);
?>
	<script>
		alert("Datos enviados correctamente!");
	</script>
<?php 
	}else{
?>
	<script>
		alert("Error al subir el archivo");
	</script>
<?php 
	}
}
header('Location: ../cheques.php');
?>

