$(document).ready(function() {
	//traer numeracion del ultimo recibo
		$.ajax({
			url: 'php/consulta_cheques_recibos.php',
			type: 'POST',
			data: {'ultimo_recibo': 'ultimo_recibo'},
		})
		.done(function(data) {
			console.log("success"+data);
			var ArrayInfo = jQuery.parseJSON(data);
			numero_recibo = parseInt(ArrayInfo[0].id + 1);
                $('#numero_recibo').html(numero_recibo);
		})
		
	//traer numeracion del ultimo recibo
});