$(document).ready(function() {

     //data table
      var table = $('#TblCheques').DataTable({
        "destroy":true,
            "ajax":{
                "method":"POST",
                "url": "php/consulta_cheques_DT_historial.php"
              },
            "columns": [
            	{ "data": "id" },
                { "data": "fecha" },
                { "data": "numero_cheque" },
                { "data": "nom_banco" },
                { "data": "cardname" },
                { "data": "fecha_cheque" },
                { "data": "estado" }
                ]
       });

     
		//data table

	table.on("click", "tr",function(){
		var data = table.row($(this).closest('tr')).data();
		cheque_id = (data.id);
    if (cheque_id != 'No hay registros...') {
          numero_cheque = (data.numero_cheque);
          modal_editar(cheque_id,numero_cheque);
    }
		
	});





//Boton descartar
$('#descartar').click(function() {
  $('#estado_cheque option:selected').removeAttr('selected');
  $('#estado_cheque').trigger('chosen:updated');
  $('#modal_editar').modal('hide');
  $('#form_cheques')[0].reset();
  $('#formulario_dinamico').html('');

});
//Boton descartar


});

//FUNCIONES

modal_editar = function (cheque_id, numero_cheque){
	$('#modal_editar').modal('show');
	$('#id_cheque').val(cheque_id);
	$('#num_cheque').val(numero_cheque);

  //traer  cheques
        $.ajax({
          url: 'php/consulta_cheques_historial.php',
          type: 'POST',
          data: {'id_cheque': cheque_id},
        })
        .done(function(data) {
            console.log("success"+data);
           var ArrayInfo = jQuery.parseJSON(data);

                $('#nom_banco').val(ArrayInfo[0].nom_banco);
            console.log(ArrayInfo[0].nom_banco);

        })
  //traer  cheques
	
}

