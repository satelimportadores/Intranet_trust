<?php 
include('class.conexion.php');

if (isset($_REQUEST['id_cheque'])) {
	$id_cheque = $_REQUEST['id_cheque'];
	$monto = $_REQUEST['monto'];
	$valor_girar = $_REQUEST['valor_girar'];
	$mot_devolucion = $_REQUEST['mot_devolucion'];
	$fecha_inicial = $_REQUEST['fecha_inicial'];
	$fecha_dev = $_REQUEST['fecha_dev'];


		//Subir y actualizar tablas

			$Cdetalle = new Conexion ;
				$acentos = $Cdetalle->query("SET NAMES 'utf8'");

					     $sql = "UPDATE intranet_cheques_info_detalle SET activo = 0 WHERE id_cheque = \"$id_cheque\"";
					     $Cdetalle->query($sql) or trigger_error($Cdetalle->error);

					     $sql01 = "INSERT INTO intranet_cheques_info_detalle (id_cheque,monto,valor_girar,fecha_cheque,devolucion,id_devolucion,fecha_devolucion,activo) VALUES 
					     (\"$id_cheque\",\"$monto\",\"$valor_girar\",\"$fecha_inicial\",1,\"$mot_devolucion\",\"$fecha_dev\",1);";
					     $Cdetalle->query($sql01) or trigger_error($Cdetalle->error);

					     $sql02 = "UPDATE intranet_cheques_info SET estado = 'devuelto' WHERE id = \"$id_cheque\"";
					     $Cdetalle->query($sql02) or trigger_error($Cdetalle->error);


			$Cdetalle->close();
		//Subir y actualizar tablas
}else{
	//echo 'No existe la variable';
}
echo "<script>window.location='../inicio.php';</script>";
?>