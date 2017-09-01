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
		alert(cheque_id);
	});

});

//FUNCIONES

