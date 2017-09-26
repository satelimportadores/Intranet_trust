<?php 
include('class.conexion.php');
	$con = new conexion;
	$query = 'SELECT id_categoria,subcategoria FROM intranet_cheques_estado WHERE categoria = "Devuelto" and activo = 1';
	$Rdevoluciones = $con->query($query) or trigger_error($con->error);
	$con->close();
		echo "<option value=''>Seleccione un motivo de devolución</option>";
		while ($row = $Rdevoluciones->fetch_array()) {
			echo "<option value='$row[id_categoria]'>$row[subcategoria]</option>";
		}	
?>

