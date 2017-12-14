<?php 
include('class.conexion.php');

if (isset($_REQUEST['id_cheque'])) {
	$id_cheque = $_REQUEST['id_cheque'];

	date_default_timezone_set('America/Bogota');
	$fecha_efectivo =  date("Y-m-d");


		//Subir y actualizar tablas

			$Cdetalle = new Conexion ;
				$acentos = $Cdetalle->query("SET NAMES 'utf8'");

					     $sql01 = "UPDATE intranet_cheques_info SET estado = 'efectivo' WHERE id = \"$id_cheque\"";
					     $Cdetalle->query($sql01) or trigger_error($Cdetalle->error);

					     $sql02 = "UPDATE intranet_cheques_info_detalle SET fecha_efectivo = \"$fecha_efectivo\" WHERE id = \"$id_cheque\"";
					     $Cdetalle->query($sql02) or trigger_error($Cdetalle->error);

			$Cdetalle->close();
		//Subir y actualizar tablas
}else{
	//echo 'No existe la variable';
}
echo "<script>window.location='../inicio.php';</script>";
?>