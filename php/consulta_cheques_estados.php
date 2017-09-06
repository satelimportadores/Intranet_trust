<?php 

    include_once('class.conexion.php');

//Categorias
      if (isset($_REQUEST['categorias'])) {
           //traer categorias   
              $categorias = new Conexion;
              $sql01 = "SELECT DISTINCT(categoria),cod_categoria FROM intranet_cheques_estado WHERE activo = 1";
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
              $sql01 = "SELECT id_categoria,subcategoria FROM intranet_cheques_estado WHERE cod_categoria = \"$subcategoria\" AND activo = 1";
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


?>