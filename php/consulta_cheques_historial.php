<?php 

    include_once('class.conexion.php');


        if (isset($_REQUEST['id_cheque'])) {

            $id_cheque = $_REQUEST['id_cheque'];

                 //traer cheques   
          $cheques = new Conexion;
          $sql01 = "SELECT ici.id,ib.nom_banco,itc.cardname as beneficiario,ici.fecha_cheque,ici.estado,ici.adjunto,ici.banco_gira,ibt.cuenta_banco,ici.tipo_fondos, icid.monto,icid.valor_girar FROM intranet_cheques_info ici INNER JOIN intranet_cheques_info_detalle icid ON ici.id = icid.id_cheque INNER JOIN intranet_bancos ib ON ici.banco_emisor = ib.id LEFT JOIN intranet_bancos_trust ibt ON ici.cuenta_gira = ibt.id LEFT JOIN intranet_trust_clientes itc ON ici.beneficiario = itc.cardcode WHERE ici.id = \"$id_cheque\"";
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
        }


?>