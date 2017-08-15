$(document).ready(function() {

		//Cargar Ciudades
				
			$.ajax({
				url: 'php/consulta_ciudades.php',
				type: 'POST',
				data: {'ciudad': 'ciudad'},
			})
			.done(function(data) {
				//console.log("success"+data);
				$('#ciudad').html(data);
				setTimeout(selects, 1000);
			})
			.fail(function(data) {
				console.log("error"+data);
			});
			
		//Cargar Ciudades

	     // Funcion carga de select cuando input file cambia 
      $("#file").change(function (){
       $(".descripcion_files").empty();
       var count_files = $(this).get(0).files.length;
            $('#cant_files').val(count_files);
        for (var i = 0; i < count_files; i++) {
           $(".descripcion_files").append("<div class='item form-group'><label for='"+i+"' class='control-label col-md-3 col-sm-3 col-xs-12'>"+$(this).get(0).files[i].name+"</label><div class='col-md-6 col-sm-6 col-xs-12'>"+add_select(i)+"</div></div>");
           setTimeout(selects, 1000);
        };
     }); 
    // Funcion carga de select cuando input file cambia

});


    var add_select = function(i){
      var datos = "<select required class='select2_single08 form-control' name='"+i+"'> \
          <option value=''>Seleccione</option> \
          <option value='firma'>Firma</option> \
          <option value='cheque'>Cheque</option> \
          <option value='otro'>Otro</option> \
      </select> \
      <br>";  
      return datos;
    }

    var selects = function(){
    	
    	$("select").chosen({});
    	//$("#ciudad").chosen({});
    	//$("#sector").chosen({});
    	//$("#forma_pago").chosen({});
    }