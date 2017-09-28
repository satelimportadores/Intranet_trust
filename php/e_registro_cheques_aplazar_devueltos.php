<?php 
include('class.conexion.php');

if (isset($_REQUEST['id_cheque'])) {
	$id_cheque = $_REQUEST['id_cheque'];
	$cuota_dia = $_REQUEST['cuota_dia'];
	$estado_cheque = $_REQUEST['estado_cheque'];
	$fecha_con = $_REQUEST['fecha_con'];
	$forma_pago_interes = $_REQUEST['forma_pago_interes'];
	$interes = $_REQUEST['interes'];
	$monto = $_REQUEST['monto'];
	$monto  =preg_replace("/[^0-9]/", "", $monto);
	$num_cheque = $_REQUEST['num_cheque'];
	$num_dias = $_REQUEST['num_dias'];
	$val_int = $_REQUEST['val_int'];
	$val_int  =preg_replace("/[^0-9]/", "", $val_int);
	$valor_girar = $_REQUEST['valor_girar'];
	$valor_girar  =preg_replace("/[^0-9]/", "", $valor_girar);



		//Subir y actualizar tablas

			$Cdetalle = new Conexion ;
				$acentos = $Cdetalle->query("SET NAMES 'utf8'");

					     $sql = "UPDATE intranet_cheques_info_detalle SET activo = 0 WHERE id_cheque = \"$id_cheque\"";
					     $Cdetalle->query($sql) or trigger_error($Cdetalle->error);

					     $sql01 = "INSERT INTO intranet_cheques_info_detalle  (id_cheque,monto,valor_girar,fecha_cheque,interes,dias,valor_interes,forma_pago_interes,devolucion,activo) VALUES (\"$id_cheque\",\"$monto\",\"$valor_girar\",\"$fecha_con\",\"$interes\",\"$num_dias\",\"$val_int\",\"$forma_pago_interes\",1,1);";
					     $Cdetalle->query($sql01) or trigger_error($Cdetalle->error);

					     $sql02 = "UPDATE intranet_cheques_info SET estado = 'aplazado' WHERE id = \"$id_cheque\"";
					     $Cdetalle->query($sql02) or trigger_error($Cdetalle->error);


			$Cdetalle->close();
		//Subir y actualizar tablas
}else{
	//echo 'No existe la variable';
}
echo "<script>window.location='../inicio.php';</script>";
?>