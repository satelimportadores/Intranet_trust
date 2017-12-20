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
                "url": "php/consulta_cheques_DT_imprimir_recibo.php"
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
        console.log(cheque_id);
        window.open('imprimir_recibo.php?cheque_id='+cheque_id,'_blank');
		
	});



});

