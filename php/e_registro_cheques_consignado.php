<?php 
include('class.conexion.php');

if (isset($_REQUEST['id_cheque'])) {
	$id_cheque = $_REQUEST['id_cheque'];
	$consig_forma_pago = $_REQUEST['forma_pago_interes'];
		if (isset($_REQUEST['cuenta-consigno'])) {
			$consig_cuenta = $_REQUEST['cuenta-consigno'];
		}else{
			$consig_cuenta = 0;
		}
	



		//Subir y actualizar tablas

			$Cdetalle = new Conexion ;
				$acentos = $Cdetalle->query("SET NAMES 'utf8'");

					     $sql01 = "UPDATE intranet_cheques_info SET estado = 'consignado' WHERE id = \"$id_cheque\"";
					     $Cdetalle->query($sql01) or trigger_error($Cdetalle->error);

					     $sql02 = "UPDATE intranet_cheques_info_detalle SET consig_forma_pago = \"$consig_forma_pago\",consig_cuenta = \"$consig_cuenta\" WHERE id_cheque = \"$id_cheque\" AND activo = 1";
					     $Cdetalle->query($sql02) or trigger_error($Cdetalle->error);


			$Cdetalle->close();
		//Subir y actualizar tablas
}else{
	//echo 'No existe la variable';
}
echo "<script>window.location='../inicio.php';</script>";
?>