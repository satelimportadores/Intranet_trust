<?php 

    include_once('class.conexion.php');
     //traer cheques   
          $cheques = new Conexion;
          $sql01 = "SELECT ici.id,ici.fecha,ici.numero_cheque,ici.banco_emisor,ib.nom_banco,ici.beneficiario,ici.fecha_cheque,itc.cardname,ici.endoso,ici.estado FROM intranet_cheques_info ici INNER JOIN intranet_bancos ib ON ici.banco_emisor = ib.id INNER JOIN intranet_trust_clientes itc ON ici.beneficiario = itc.cardcode WHERE ici.estado = 'consignado'";
          $Rcheques = $cheques->query($sql01) or trigger_error($cheques->error);
  //traer cheques 
          
          if (!$Rcheques) {
             echo 'No hay datos para mostrar';
          }else{
            while ($data = $Rcheques->fetch_array()) {
              $arreglo['data'][] =  $data;
            }
            echo json_encode($arreglo);
            $cheques->close();
          }


?>