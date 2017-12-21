<?php 
/*crear variable de session usura */
	if (isset($_REQUEST['c_tasa_usura'])) {
		session_start();
		$tasa_usura = $_REQUEST['c_tasa_usura'];
		$_SESSION["tasa_usura"]=$tasa_usura;
		echo $_SESSION["tasa_usura"];
	}

?>

