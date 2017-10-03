<?php 
include('class.conexion.php');
header('Content-Type: text/html; charset=utf-8');

	if (isset($_REQUEST['bancos_trust'])) {
	$con = new conexion;
	$query = "SELECT DISTINCT(nom_banco) FROM intranet_bancos_trust WHERE activo = 1 ORDER BY nom_banco ASC";
	$Rbancos = $con->query($query) or trigger_error($con->error);
	$con->close();
		echo "<option value=''>Seleccione un banco</option>";
		while ($row = $Rbancos->fetch_array()) {
			echo "<option value='$row[nom_banco]'>$row[nom_banco]</option>";
		}
	}

	if (isset($_REQUEST['cuentas_trust']) && isset($_REQUEST['banco'])) {

	$banco = $_REQUEST['banco']; 
	$con = new conexion;
	$query = "SELECT id,nom_banco,cuenta_banco,propietario FROM intranet_bancos_trust WHERE activo = 1 AND nom_banco = \"$banco\" ORDER BY nom_banco ASC";
	$Rbancos = $con->query($query) or trigger_error($con->error);
	$con->close();
		while ($row = $Rbancos->fetch_array()) {
			$arreglo[] = $row;
		}
	echo json_encode($arreglo);
	}

	if (isset($_REQUEST['consigno'])) {

	$con = new conexion;
	$query = "SELECT id,nom_banco,cuenta_banco FROM intranet_bancos_trust";
	$Rbancos = $con->query($query) or trigger_error($con->error);
	$con->close();
	echo "<option value=''>Seleccione un banco</option>";
		while ($row = $Rbancos->fetch_array()) {
			echo "<option value='$row[id]'>$row[nom_banco] - $row[cuenta_banco]</option>";
		}

	}
?>

