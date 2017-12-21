<?php 

    include_once('class.conexion.php');

        if (isset($_REQUEST['cheque_id'])) {

            $cheque_id = $_REQUEST['cheque_id'];

   //traer cheques   
          $cheques = new Conexion;
          $sql01 = "SELECT ici.id,ici.fecha,ici.numero_cheque,ib.nom_banco,ici.beneficiario,ici.fecha_cheque,icid.valor_girar,icid.monto,itc.cardname,itc.ciudad,itc.direccion,itc.telefono,ici.endoso,ici.estado,ici.id_recibo,ici.tipo_fondos,ici.banco_gira,ibt.cuenta_banco,ici.responsable,ici.tasa_usura FROM intranet_cheques_info ici INNER JOIN intranet_cheques_info_detalle icid ON ici.id = icid.id_cheque INNER JOIN intranet_bancos ib ON ici.banco_emisor = ib.id INNER JOIN intranet_trust_clientes itc ON ici.beneficiario = itc.cardcode LEFT JOIN intranet_bancos_trust ibt ON ici.cuenta_gira = ibt.id WHERE ici.estado = 'por_consig' AND ici.id = \"$cheque_id\"";
          $Rcheques = $cheques->query($sql01) or trigger_error($cheques->error);
  //traer cheques 
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


?>