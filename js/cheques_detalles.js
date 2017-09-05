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
                { "data": "estado" }
                ]
       });

     
		//data table

	table.on("click", "tr",function(){
		var data = table.row($(this).closest('tr')).data();
		console.log(data);
		cheque_id = (data.id);
		numero_cheque = (data.numero_cheque);
		modal_editar(cheque_id,numero_cheque);
		
	});

});

//FUNCIONES

modal_editar = function (cheque_id, numero_cheque){
	$('#modal_editar').modal('show');
	$('#id_cheque').val(cheque_id);
	$('#num_cheque').val(numero_cheque);
	
}