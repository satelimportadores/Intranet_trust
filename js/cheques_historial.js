$(document).ready(function() {

     //data table
      var table = $('#TblCheques').DataTable({
      "language":{
        "sProcessing":     "Procesando...",
        "sLengthMenu":     "Mostrar _MENU_ registros",
        "sZeroRecords":    "No se encontraron resultados",
        "sEmptyTable":     "Ningún dato disponible en esta tabla",
        "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
        "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
        "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
        "sInfoPostFix":    "",
        "sSearch":         "Buscar:",
        "sUrl":            "",
        "sInfoThousands":  ",",
        "sLoadingRecords": "Cargando...",
        "oPaginate": {
          "sFirst":    "Primero",
          "sLast":     "Último",
          "sNext":     "Siguiente",
          "sPrevious": "Anterior"
        },
        "oAria": {
          "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
          "sSortDescending": ": Activar para ordenar la columna de manera descendente"
          }
      },
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
            //console.log("success"+data);
           var ArrayInfo = jQuery.parseJSON(data);
                $('#nom_banco').val(ArrayInfo[0].nom_banco);
                $('#beneficiario').val(ArrayInfo[0].beneficiario);
                $('#fecha_cheque').val(ArrayInfo[0].fecha_cheque);
                
                adjunto = ArrayInfo[0].adjunto;
                $('#cheque_adjunto').html("<img src='archivos_cheques/"+adjunto+"'></div>");
                estado = ArrayInfo[0].estado;
                switch(estado) {
                        case 'por_consig':
                              $('#estado').val('Cheque por consignar');
                            break;
                        case 'consignado':
                              $('#estado').val('Cheque consignado');
                            break;
                        case 'aplazado':
                              $('#estado').val('Cheque aplazado');
                            break;
                        case 'devuelto':
                              $('#estado').val('Cheque devuelto');
                            break;
                        case 'efectivo':
                              $('#estado').val('Cheque efectivo');
                            break;
                        default:
                            $('#estado').val('');
                  }
                $('#fecha_cheque_efectivo').val(ArrayInfo[0].fecha_efectivo);
                $('#banco_gira').val(ArrayInfo[0].banco_gira);
                $('#cuenta_banco').val(ArrayInfo[0].cuenta_banco);
                $('#tipo_fondos').val(ArrayInfo[0].tipo_fondos);
                $('#monto').val(ArrayInfo[0].monto);
                $('#monto').priceFormat({ prefix: '$ ', thousandsSeparator: ',', clearOnEmpty: true });
                $('#valor_girar').val(ArrayInfo[0].valor_girar);
                $('#valor_girar').priceFormat({ prefix: '$ ', thousandsSeparator: ',', clearOnEmpty: true });
                
                
                
                
                

        })
  //traer  cheques
	
}

