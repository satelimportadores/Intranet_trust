<?php 

    include_once('class.conexion.php');


        if (isset($_REQUEST['id_cheque'])) {

            $id_cheque = $_REQUEST['id_cheque'];

                 //traer cheques   
          $cheques = new Conexion;
          $sql01 = "select `ici`.`id` AS `id`,`ib`.`nom_banco` AS `nom_banco`,`ici`.`beneficiario` AS `beneficiario`,`ici`.`fecha_cheque` AS `fecha_cheque`,`ici`.`estado` AS `estado`,`ici`.`adjunto` AS `adjunto`,`ici`.`banco_gira` AS `banco_gira`,`ibt`.`cuenta_banco` AS `cuenta_banco`,`ici`.`tipo_fondos` AS `tipo_fondos`,`icid`.`monto` AS `monto`,`icid`.`valor_girar` AS `valor_girar` from (((`intranet_cheques_info` `ici` join `intranet_cheques_info_detalle` `icid` on((`ici`.`id` = `icid`.`id_cheque`))) join `intranet_bancos` `ib` on((`ici`.`banco_emisor` = `ib`.`id`))) left join `intranet_bancos_trust` `ibt` on((`ici`.`cuenta_gira` = `ibt`.`id`))) WHERE ici.id = \"$id_cheque\"";
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