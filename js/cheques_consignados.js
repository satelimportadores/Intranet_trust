$(document).ready(function() {


	
     //data table
      var table = $('#TblCheques').DataTable({
        "destroy":true,
            "ajax":{
                "method":"POST",
                "url": "php/consulta_cheques_DT_consignados.php"
              },
            "columns": [
            	{"":""},
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
		numero_cheque = (data.numero_cheque);
		modal_editar(cheque_id,numero_cheque);
	});

//traer formulario dinamico
 $('#estado_cheque').change(function() {

    categoria = $('#estado_cheque').val();
    
       if (categoria == '1') {

        $('#formulario_dinamico').load('php/formulario_01_cheques_consignados.php');

         id_cheque = $('#id_cheque').val();

            $.post('php/consulta_cheques_estados.php',{'id_cheque': id_cheque,'fecha_cheque':'fecha_cheque'},function(data){
              $('#fecha_inicial').val(data);
              fechamin = moment(data);
              $('#formulario_dinamico #fecha_cheq').val(fechamin.format("YYYY-MM-DD"));
              $('#formulario_dinamico #fecha_cheq').attr('min', fechamin.format("YYYY-MM-DD"));
              $('#formulario_dinamico #fecha_dev').val(fechamin.format("YYYY-MM-DD"));
              $('#formulario_dinamico #fecha_dev').attr('min', fechamin.format("YYYY-MM-DD"));
            });

    $.post('php/consulta_cheques_estados.php',{'id_cheque': id_cheque,'monto':'monto'},function(data){
      $('#formulario_dinamico #monto').val(data);
    });
    $.post('php/consulta_cheques_estados.php',{'id_cheque': id_cheque,'valor_girar':'valor_girar'},function(data){
      $('#formulario_dinamico #valor_girar').val(data);
    });

          
          $("#formulario_dinamico").trigger('create');

          $('#form_cheques').prop('action', 'php/e_registro_cheques_devolucion.php');
          setTimeout("$('#mot_devolucion').load('php/consulta_devoluciones.php')", 300);
          

       }else{
          $('#formulario_dinamico').html('');
          $('#form_cheques').prop('action', 'php/e_registro_cheques_efectivo.php');
       }
 });
//traer formulario dinamico



//Boton descartar
$('#descartar').click(function() {
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
  //traer categorias de estado cheques
        $.ajax({
          url: 'php/consulta_cheques_estados.php',
          type: 'POST',
          data: {'paso02': 'paso02'},
        })
        .done(function(data) {
          //console.log("success"+data);
          $("#estado_cheque" ).empty();
          $("#estado_cheque" ).append( data );
          $("#estado_cheque").chosen({});
        })
        .fail(function() {
          console.log("error");
        })
        
  //traer categorias de estado cheques
	
}


//Calculo de dias habiles