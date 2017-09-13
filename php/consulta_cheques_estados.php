<?php 

    include_once('class.conexion.php');

//Categorias
      if (isset($_REQUEST['paso01'])) {
           //traer categorias   
              $categorias = new Conexion;
              $sql01 = "SELECT DISTINCT(categoria),cod_categoria FROM intranet_cheques_estado WHERE activo = 1 AND paso = 1 order by categoria ASC";
              $Rcategorias = $categorias->query($sql01) or trigger_error($categorias->error);
          //traer categorias
          if (!$Rcategorias) {
                Die ('Error');
          }else{
                  echo '<option value="">Seleccione una opción</option>';
                while ($data = $Rcategorias->fetch_array()) {
                  echo "<option value='$data[cod_categoria]'>$data[categoria]</option>";
                }
          } 
            $categorias->close();
      }
//Categorias

//Subcategorias
      if (isset($_REQUEST['subcategoria'])) {

            $subcategoria = $_REQUEST['subcategoria'];
           //traer categorias   
              $subcategorias = new Conexion;
              $sql01 = "SELECT id_categoria,subcategoria FROM intranet_cheques_estado WHERE cod_categoria = \"$subcategoria\" AND activo = 1 order by subcategoria ASC";
              $Rsubcategorias = $subcategorias->query($sql01) or trigger_error($subcategorias->error);
          //traer subcategorias
          if (!$Rsubcategorias) {
                Die ('Error');
          }else{
                  echo '<option value="">Seleccione una opción</option>';
                while ($data = $Rsubcategorias->fetch_array()) {
                  echo "<option value='$data[id_categoria]'>$data[subcategoria]</option>";
                }
          } 
            $subcategorias->close();
      }
//Subcategorias

//taza de interes de un cheque
      if (isset($_REQUEST['interes'])) {

            $id_cheque = $_REQUEST['id_cheque'];
           //traer categorias   
              $interes = new Conexion;
              $sql01 = "SELECT interes FROM intranet_cheques_info_detalle WHERE id_cheque  = \"$id_cheque\"";
              $Rinteres = $interes->query($sql01) or trigger_error($interes->error);
          //traer interes
          if (!$Rinteres) {
                Die ('Error');
          }else{
                while ($data = $Rinteres->fetch_array()) {
                  echo $data['interes'];
                }
          } 
            $interes->close();
      }
//taza de interes de un cheque

//monto de un cheque
      if (isset($_REQUEST['monto'])) {

            $id_cheque = $_REQUEST['id_cheque'];
           //traer categorias   
              $monto = new Conexion;
              $sql01 = "SELECT monto FROM intranet_cheques_info_detalle WHERE id_cheque  = \"$id_cheque\"";
              $Rmonto = $monto->query($sql01) or trigger_error($monto->error);
          //traer monto
          if (!$Rmonto) {
                Die ('Error');
          }else{
                while ($data = $Rmonto->fetch_array()) {
                  echo $data['monto'];
                }
          } 
            $monto->close();
      }
//monto de un cheque      

//valor_girar de un cheque
      if (isset($_REQUEST['valor_girar'])) {

            $id_cheque = $_REQUEST['id_cheque'];
           //traer categorias   
              $valor_girar = new Conexion;
              $sql01 = "SELECT valor_girar FROM intranet_cheques_info_detalle WHERE id_cheque  = \"$id_cheque\"";
              $Rvalor_girar = $valor_girar->query($sql01) or trigger_error($valor_girar->error);
          //traer valor_girar
          if (!$Rvalor_girar) {
                Die ('Error');
          }else{
                while ($data = $Rvalor_girar->fetch_array()) {
                  echo $data['valor_girar'];
                }
          } 
            $valor_girar->close();
      }
//valor_girar de un cheque      valor_girar
?>