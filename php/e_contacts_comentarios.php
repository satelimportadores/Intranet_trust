<?php
include('class.conexion.php');
date_default_timezone_set('America/Bogota');
$fecha = date("Y-m-d H:i:s");
?>

<?php 
	
	if (isset($_REQUEST['sql01'])) {

	$comentarios = $_REQUEST['comentarios'];
	$user_id = $_REQUEST['user_id'];
	$cardcode = $_REQUEST['cardcode'];

	//echo "$comentarios $user_id $cardcode";	

	//Subir archivos al disco duro
		$ruta = '../archivos_cheques/'; //Decalaramos una variable con la ruta en donde almacenaremos los archivos

		foreach ($_FILES as $key) //Iteramos el arreglo de archivos
		{
			if($key['error'] == UPLOAD_ERR_OK )//Si el archivo se paso correctamente Ccontinuamos 
				{
					$NombreOriginal = $key['name'];//Obtenemos el nombre original del archivo
					echo $NombreOriginal;
					$temporal = $key['tmp_name']; //Obtenemos la ruta Original del archivo
					$Destino = $ruta.$NombreOriginal;	//Creamos una ruta de destino con la variable ruta y el nombre original del archivo	
					move_uploaded_file($temporal, $Destino); //Movemos el archivo temporal a la ruta especificada
						//Guardar comentario en la base de datos
							$con = new conexion;
							$query = "INSERT INTO intranet_trust_clientes_comentarios(user_id, cardcode, comentarios, fecha,n_adjunto) VALUES ('$user_id', '$cardcode', '$comentarios', '$fecha', '$NombreOriginal')";
							$con->query($query) or trigger_error($con->error);	
						//Guardar comentario en la base de datos
				}
			
		}
		
	//Subir archivos al disco duro

		
	}


?>

<?php 

if (isset($_REQUEST['sql02'])) {

	$comentarios = $_REQUEST['comentarios'];
	$user_id = $_REQUEST['user_id'];
	$cardcode = $_REQUEST['cardcode'];

	//echo "$comentarios $user_id $cardcode";

	//Guardar comentario en la base de datos
		$con = new conexion;
		$query = "INSERT INTO intranet_trust_clientes_comentarios(user_id, cardcode, comentarios, fecha) VALUES ('$user_id', '$cardcode', '$comentarios', '$fecha')";
		$con->query($query) or trigger_error($con->error);	
	//Guardar comentario en la base de datos
	
}



?>

