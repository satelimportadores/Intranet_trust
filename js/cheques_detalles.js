$(document).ready(function() {
	
     //data table
      var table = $('#TblCheques').DataTable({
        "destroy":true,
            "ajax":{
                "method":"POST",
                "url": "php/consulta_cheques_datatable.php"
              },
            "columns": [
            	{"":""},
            	{ "data": "id" },
                { "data": "fecha" },
                { "data": "numero_cheque" },
                { "data": "nom_banco" },
                { "data": "cardname" },
                { "data": "monto" },
                { "data": "fecha_cheque" },
                { "data": "estado" }
                ]
       });

     
		//data table

	table.on("click", "tr",function(){
		var data = table.row($(this).closest('tr')).data();
		//console.log(data);
		cheque_id = (data.id);
		numero_cheque = (data.numero_cheque);
		modal_editar(cheque_id,numero_cheque);
		
	});

 $('#categorias').change(function() {


    categoria = $('#categorias').val();
    //traer subcategorias
      $.ajax({
        url: 'php/consulta_cheques_estados.php',
        type: 'POST',
        data: {'subcategoria': categoria},
      })
      .done(function(data) {
        console.log("success"+data);
          $("#subcategorias" ).empty();
          $("#subcategorias" ).append( data );
          $("#subcategorias").chosen({});
          $("#subcategorias").trigger("chosen:updated");
      })
      .fail(function() {
        console.log("error");
      })
    //traer subcategorias
 }); 


});

//FUNCIONES

modal_editar = function (cheque_id, numero_cheque){
	$('#modal_editar').modal('show');
	$('#id_cheque').val(cheque_id);
	$('#num_cheque').val(numero_cheque);
  //traer categorias de estado cheques
        $.ajax({
          url: 'php/consulta_cheques_estados.php',
          type: 'POST',
          data: {'categorias': 'categorias'},
        })
        .done(function(data) {
          //console.log("success"+data);
          $("#categorias" ).empty();
          $("#categorias" ).append( data );
          $("#categorias").chosen({});
        })
        .fail(function() {
          console.log("error");
        })
        
  //traer categorias de estado cheques
	
}