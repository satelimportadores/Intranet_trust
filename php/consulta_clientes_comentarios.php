<?php 
include('class.conexion.php');
	
	if (isset($_REQUEST['cardcode']) && $_REQUEST['cardcode'] != '') {
		$cardcode = $_REQUEST['cardcode'];
			//consulta
	$con = new conexion;
	$query = "SELECT ITCC.user_id,CONCAT(TU.nombre,' ',TU.apellido) as nombre,ITCC.comentarios,ITCC.fecha,ITCC.n_adjunto FROM intranet_trust_clientes_comentarios ITCC INNER JOIN trust_users TU on TU.id = ITCC.user_id WHERE ITCC.cardcode = \"$cardcode\" ORDER BY fecha DESC";
	$datos_client = $con->query($query) or trigger_error($con->error);
	$Ncons_client = $datos_client->num_rows;
	$con->close();

			if ($Ncons_client != 0) {
					while ($row = $datos_client->fetch_array()) {
//impresion de codigo html
                            echo "<li>";
                                  echo "<div class='profile-photo'>";
                                    echo "<img src='assets/images/peter-avatar.jpg' alt='' class='img-circle'>";
                                  echo "</div>";
                                  
                                  echo "<div class='comment-container'>";
                                  
                                    echo "<a href='#' class='comment-author'>";
                                      echo "$row[nombre] <br>";
                                    echo "</a>";
                                    
                                    echo "$row[comentarios]";

                                      if ($row['n_adjunto'] <> '') {
                                        echo "<div class='col-md-4'>";
                                          echo"<img src='archivos_cheques/$row[n_adjunto]' class='img-responsive img-rounded' alt='$row[n_adjunto]'>";
                                        echo "<div>";
                                      }


                                    
                                    echo "<div class='comment-meta'>";

                                      
                                      echo "<a href='#' class='comment-date'>$row[fecha]</a>";
                                      
                                      echo "<i class='fa fa-circle'></i>";

                                      echo "<a href='#'>";
                                        echo "<i class='fa fa-heart'></i>";
                                        echo "Like <span>(6)</span>";
                                      echo "</a>";
                                      
                                      echo "<i class='fa fa-circle'></i>";
                                                        
                                      echo "<a href='#'>";
                                        echo "<i class='fa fa-reply'></i>";
                                        echo "Reply";
                                      echo "</a>";
                                    echo "</div>";
                                    
                                  echo "</div>";
                            echo "</li>";
//impresion de codigo html
					}
				}else{
					echo 1;
				}

			//consulta
	}else{
		echo 2;
	}

	
?>


