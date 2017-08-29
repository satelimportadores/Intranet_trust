<?php 

    include_once('class.conexion.php');
     //traer cheques   
          $cheques = new Conexion;
          $sql01 = "SELECT * FROM intranet_cheques_info";
          $Rcheques = $cheques->query($sql01) or trigger_error($cheques->error);
  //traer cheques 
          
          if (!$Rcheques) {
           Die ('Error');
          }else{
            while ($data = $Rcheques->fetch_array()) {
              $arreglo['data'][] =  $data;
            }
            echo json_encode($arreglo);
            $cheques->close();
          }


?>