<?php 

    include_once('class.conexion.php');
     //traer cheques   
          $cheques = new Conexion;
          $sql01 = "SELECT COUNT(id)as cantidad,ROUND((COUNT(id) / 100) * 100)  as porcentaje FROM intranet_cheques_info WHERE estado = 'por_consig'";
          $Rcheques = $cheques->query($sql01) or trigger_error($cheques->error);
  //traer cheques 
          $num_filas =  $Rcheques->num_rows;
          if ($num_filas == 0) {
            echo '{ "data": [ { "0": "","1": "","2":"","3":"","4":"","5":"","6":"","7":"","8":"","9":"","id": "No hay registros...","fecha": "","numero_cheque":"","banco_emisor":"","nom_banco":"","beneficiario":"","fecha_cheque":"","cardname":"","endoso":"","estado":"" } ] }';
          }else{
            while ($data = $Rcheques->fetch_array()) {
              $arreglo[] =  $data;
            }
            echo json_encode($arreglo);
            $cheques->close();
          }


?>