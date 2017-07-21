<?php
session_start();
if(!empty($_POST)){
	if(isset($_POST["username"]) &&isset($_POST["password"])){
		if($_POST["username"]!=""&&$_POST["password"]!=""){
			include "class.conexion.php";
			

			$con = new Conexion;
			
			if (mysqli_connect_errno()) {
			    printf("Falló la conexión: %s\n", mysqli_connect_error());
			    exit();
			}

			$password = md5($_POST["password"]);
			$user_id=null;

			$username = $con->real_escape_string($_POST["username"]);

			$sql1= "select * from trust_users where (username=\"$username\" or email=\"$username\") and password=\"$password\" and activo='1' ";
			
			$query = $con->query($sql1) or trigger_error($con->error);
			while ($r=$query->fetch_array()) {
				$user_id=$r["id"];
				$user_permisos=$r["nivel_permisos"];
				$user_nombre=$r["nombre"]." ".$r["apellido"];
				break;
			}

					if($user_id==null){
						print "<script>alert(\"Acceso invalido.\");window.location='../index.php';</script>";
					}else{
						
						$_SESSION["user_id"]=$user_id;
						$_SESSION["user_nombre"]=$user_nombre;
						$_SESSION["nivel_permisos"]=$user_permisos;

							switch ($user_permisos) {
								case '1':

										$_SESSION["departamento"]='Administrativos';
										print "<script>window.location='../inicio.php';</script>";								
									break;

								default:
										print "<script>alert(\"Acceso invalido.\");window.location='../index.php';</script>";
									break;
							}


									
					}
		}
	}
}



?>