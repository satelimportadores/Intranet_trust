<?php 
include('class.conexion.php');

if (isset($_REQUEST['id_cheque'])) {
	$id_cheque = $_REQUEST['id_cheque'];


		//Subir y actualizar tablas

			$Cdetalle = new Conexion ;
				$acentos = $Cdetalle->query("SET NAMES 'utf8'");

					     $sql01 = "UPDATE intranet_cheques_info SET estado = 'consignado' WHERE id = \"$id_cheque\"";
					     $Cdetalle->query($sql01) or trigger_error($Cdetalle->error);


			$Cdetalle->close();
		//Subir y actualizar tablas
}else{
	//echo 'No existe la variable';
}
echo "<script>window.location='../inicio.php';</script>";
?>