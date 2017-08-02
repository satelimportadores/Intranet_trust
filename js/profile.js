$(document).ready(function() {

	esconder();
	ver_cliente();

	$( "#adjunto" ).click(function() {
  		$('#archivos').fadeIn( "slow" );
  		$('#fotos').attr('required', 'required');
  		$('#adjuntono').fadeIn( "slow" );
  		$('#adjunto').fadeOut( "slow" );
	});

	$( "#adjuntono" ).click(function() {
  		$('#archivos').fadeOut( "slow" );
  		$('#fotos').removeAttr('required', 'required');
  		$('#adjuntono').fadeOut( "slow" );
  		$('#adjunto').fadeIn( "slow" );

	});

	$( "#guardar" ).click(function() {
		guardar();
	});

	$( "#fotos" ).change(function() {
			$("#nombres").empty();
			var files = $("#fotos")[0].files;
				for (var i = 0; i < files.length; i++){
					//alert(files[i].name);
					$("#nombres").append($("<li>").text(files[i].name));
				}

	});

	

});

//--** FUNCIONES **--//

esconder = function(){
	$('#adjuntono').fadeOut( "slow" );
	$('#archivos').fadeOut( "slow" );
}

//cargar datos cliente
ver_cliente = function(){
	$.ajax({
		url: 'php/consulta_clientes.php',
		type: 'POST',
		data: {'cardcode': cardcode},
	})
	.done(function(data) {
		console.log("success");
		//console.log(data);
			switch(parseInt(data)) {
			    case 1:
			        $('#alerta').html('No existen datos con ese codigo');
			        $('#contenido').fadeOut( "slow" );

			        break;
			    case 2:
			        $('#alerta').html('No existe codigo de usuario');
			        $('#contenido').fadeOut( "slow" );
			        break;
			    default:
			        var cliente = JSON.parse(data);
			        var cardname = cliente[0].cardname;
			        $('#contenido').fadeIn( "slow" );
			        $('#cardname').html(cardname);
			        ver_comentarios();
			}
	})
	.fail(function() {
		console.log("error");
	})
}
//cargar datos cliente

//cargar comentarios cliente
ver_comentarios = function(){
	$.ajax({
		url: 'php/consulta_clientes_comentarios.php',
		type: 'POST',
		data: {'cardcode': cardcode},
	})
	.done(function(data) {
		console.log("success");
		//console.log(data);
			switch(parseInt(data)) {
			    case 1:
			        	$('#comments').html('No existen comentarios con ese codigo');
			        break;
			    case 2:
			        	$('#comments').html('No existe codigo de usuario');
			        break;
			    default:
						$('#comments').html(data);
			}
	})
	.fail(function() {
		console.log("error");
	})
}
//cargar comentarios cliente

//Guardar datos en la base y adjuntos
var guardar = function(){

	var comprobar = $('#fotos').val().length;

		if (comprobar > 0) {

			var datos = $('#form_coments').serialize();
			var archivos = $('#fotos')[0];
			var archivo = archivos.files;
			archivos = new FormData();
			var url = 'php/e_contacts_comentarios.php';

				for(i=0; i < archivo.length; i++){
					archivos.append('archivo'+i,archivo[i]); //Añadimos cada archivo a el arreglo con un indice direfente
				}
			//Mandar datos por AJAX
				$.ajax({
					url: url+'?'+datos+'&sql01',
					type: 'POST',
					contentType: false,
					data: archivos,
					processData:false
				})
				.done(function(data) {
					console.log(data);
					console.log("success");
					ver_comentarios();
					$('#form_coments')[0].reset();
					$("#nombres").empty();
			  		$('#archivos').fadeOut( "slow" );
			  		$('#fotos').removeAttr('required', 'required');
			  		$('#adjuntono').fadeOut( "slow" );
			  		$('#adjunto').fadeIn( "slow" );

				})
				.fail(function() {
					console.log("error");
				})
				.always(function() {
					console.log("complete");
				});
				
			//Mandar datos por AJAX

			//alert('si hay');
		}else{

			CantComents = $('#comentarios').val().length;
			var datos = $('#form_coments').serialize();
			var url = 'php/e_contacts_comentarios.php?sql02';
			//Mandar datos por AJAX
				$.ajax({
					url: url,
					type: 'POST',
					data: datos,
				})
				.done(function(data) {
					console.log(data);
					console.log("success");
					ver_comentarios();
					$('#form_coments')[0].reset();
				})
				.fail(function() {
					console.log("error");
				})
				.always(function() {
					console.log("complete");
				});
				
			//Mandar datos por AJAX

			
		}


}
//Guardar datos en la base y adjuntos