<?php 
include('class.conexion.php');

if (isset($_REQUEST['add_client'])) {
	$cant_files = $_REQUEST['cant_files'];
	$cardcode = $_REQUEST['cardcode'];
	$cardname = $_REQUEST['cardname'];
	$ciudad = $_REQUEST['ciudad'];
	$cupo = $_REQUEST['cupo'];
	$direccion = $_REQUEST['direccion'];
	$email_new = $_REQUEST['email_new'];
	$movil_new = $_REQUEST['movil_new'];
	$paginaweb = $_REQUEST['paginaweb'];
	$persona_contacto = $_REQUEST['persona_contacto'];
	$telefono = $_REQUEST['telefono'];
	date_default_timezone_set('America/Bogota');
	$fechaDB = date("Y-m-d H:i:s");
	$fechaArc = date("Ymd");

		//bucle para subir archivos

			$client = new Conexion ;
				$acentos = $client->query("SET NAMES 'utf8'");

					     $sql01 = "INSERT INTO intranet_trust_clientes (cardcode,cardname,direccion,movil,telefono,paginaweb,cupo,ciudad,fechaCreacion,email,activo) VALUES (\"$cardcode\",\"$cardname\",\"$direccion\",\"$movil_new\",\"$telefono\",\"$paginaweb\",\"$cupo\",\"$ciudad\",\"$fechaDB\",\"$email_new\",1);";
					     $client->query($sql01) or trigger_error($client->error);

				for ($i=0; $i < $cant_files; $i++) { 

						$tmpFilePath = $_FILES['file']['tmp_name'][$i];

							if ($tmpFilePath != ""){
									    //Setup our new file path
									    	 $tipo_archivo = $_REQUEST[$i]; 
									    	 $destino = "../archivos_cheques/$tipo_archivo/";
									    	 $ext = pathinfo($_FILES['file']['name'][$i], PATHINFO_EXTENSION);
									    	 $filename = $cardcode.'_'.$fechaArc.'.'.$ext;
										     $sql02 = "INSERT INTO intranet_trust_clientes_archivos (cardcode,fecha,tipo_archivo,n_adjunto) VALUES (\"$cardcode\",\"$fechaDB\",\"$tipo_archivo\",\"$filename\");";
										     $client->query($sql02) or trigger_error($client->error);
										     move_uploaded_file($tmpFilePath, $destino.$filename);
										    //Upload the file into the temp dir
										   
							}
					}
			$client->close();
		//bucle para subir archivos
}else{
	//echo 'No existe la variable';
}
echo "<script>window.location='../profile.php?cardcode=$cardcode';</script>";
?>