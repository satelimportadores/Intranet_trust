<?php  
    include_once('class.conexion.php');


//traer cheques pendientes
      if (isset($_REQUEST['cheques_pendientes'])) {
             
          $cheques = new Conexion;
          $sql01 = "SELECT COUNT(id)as cantidad,ROUND((COUNT(id) / 100) * 100)  as porcentaje FROM intranet_cheques_info WHERE estado = 'por_consig'";
          $Rcheques = $cheques->query($sql01) or trigger_error($cheques->error);
             
          $num_filas =  $Rcheques->num_rows;
          if ($num_filas == 0) {
            echo 0;
          }else{
            while ($data = $Rcheques->fetch_array()) {
              $arreglo[] =  $data;
            }
            echo json_encode($arreglo);
            $cheques->close();
          }
      }
//traer cheques pendientes



?>