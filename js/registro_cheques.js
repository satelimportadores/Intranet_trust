var fecha01;
var fecha;
$(document).ready(function() {


	//modal tasa de usura
	
	$.ajax({
		url: 'php/consulta_tasa_usura.php',
		type: 'POST',
		data: {'tasa_usura': 'tasa_usura'},
	})
	.done(function(data) {
		
	           var ArrayInfo = jQuery.parseJSON(data);
	           	cantidad = ArrayInfo[0].cantidad;
	           	tasa_usura = ArrayInfo[0].tasa_usura;
	           		//console.log('cantidad: '+cantidad);
					//console.log('tasa_usura: '+tasa_usura);
	           		//funcion para modal de tasa de usura
	           			if (cantidad >= 1) {
	           				$('#modal_tasa_usura').modal('hide');
	           					//crear variable de sesion tasa de usura
	           						$.ajax({
	           							url: 'php/consulta_VS_usura.php',
	           							type: 'POST',
	           							data: {'c_tasa_usura': tasa_usura},
	           						})
	           						.done(function(data) {
	           							//console.log("tasa de usura: "+data);
	           						})
	           					//crear variable de sesion tasa de usura
	           			}else{
	           				$('#modal_tasa_usura').modal('show');
	           				$('#error').fadeOut('fast');
	           				$( "#BtnGuardar" ).prop( "disabled", true );
	           			}
	           		//funcion para modal de tasa de usura
	})

	$( "#tasa_usura" ).keyup(function() {
  		texto = $("#tasa_usura").val();
				var reg = /[0-9]{1}\.[0-9]{2}/;

  				 if(reg.test(texto)) {
  				 		$('#error').hide();
 				 		$( "#BtnGuardar" ).prop( "disabled", false );

				    } else { 
				    	$( "#BtnGuardar" ).prop( "disabled", true );
				    	$('#error').fadeIn();
				 		$('#error').html('<strong>Tasa de usura! </strong>El formata que esta ingresando es invalido, ejemplo: <em>2.93</em>');
				 		$("#tasa_usura").focus();
				} 

	});
	

	//modal tasa de usura

	$('.banco').hide();
	$('.cuenta').hide();
	$('.endosohide').hide();
	$('#por_consig').load('php/consulta_cheques.php?a=1');
	$('#bancos').load('php/consulta_bancos.php');
	$('#benef').load('php/consulta_clientes_datos.php');
	$('#interes').load('php/consulta_interes.php');
	$('#banco_gira').load('php/consulta_bancos_trust.php?bancos_trust');
	
	$('#monto').maskMoney({thousands:'.', decimal:',',precision: 2});

              hoy = moment();
              $('#fecha_cheq').val(hoy.format("YYYY-MM-DD"));
              $('#fecha_con').val(hoy.format("YYYY-MM-DD"));
              $('#fecha_cheq').attr('min', hoy.format("YYYY-MM-DD"));
              $('#fecha_con').attr('min', hoy.format("YYYY-MM-DD"));
              cambio_fecha();

	setTimeout(Cselect, 1000);
	
	$('#fecha_cheq').on('change',function(){
		cambio_fecha();
	});


//formulario 1

	$('#form_TasaUsura').submit(function(e) {
		e.preventDefault();

			//guardar tasa de usura en la base de datos
			var data = $('#form_TasaUsura').serializeArray();
				$.ajax({
					url: 'php/e_tasa_usura.php',
					type: 'POST',
					data: data,
				})
				.done(function(datos) {
					//console.log("success: "+datos);
					$('#modal_tasa_usura').modal('hide');
				})
				
			//guardar tasa de usura en la base de datos
		
	})

//formulario 1

	$('#Descartar').click(function() {
	  $('#modal_tasa_usura').modal('hide');
	  $('#form_TasaUsura')[0].reset();
	  $('#tasa_usura').text();
	  window.location='inicio.php';
	});

	$('#fondos').on('change',function() {
		fondos = $('#fondos').val();
		if (fondos == 'cheque') {
			$('.banco').fadeIn();
		}else{
			$('.banco option:selected').removeAttr('selected');
			$('.banco').fadeOut();
			$('.cuenta option:selected').removeAttr('selected');
			$('.cuenta').fadeOut();
		}
	});


	//abre endoso
	var check = 1
	$('#myonoffswitch16').on('click',function(){
		if (check == 1) {
				$('.endosohide').fadeIn();
				check = 0;
				$('#endoso').text('');
				$("#endoso").prop('required',true);

		}else{
				$('.endosohide').fadeOut();
				check = 1;
				$('#endoso').text($('#benef option:selected').text());
				$("#endoso").prop('required',false);
		}

	});

	//abre endoso

	//trae las cuentas del banco escogido #banco_gira
		$('#banco_gira').on('change',function() {
			banco = $('#banco_gira').val();
				if (banco != '') {
					//ajax traer cuentas
						$.ajax({
							url: 'php/consulta_bancos_trust.php',
							type: 'POST',
							data: {'cuentas_trust': 'cuentas_trust','banco': banco},
						})
						.done(function(data) {
							//console.log("success"+data);
							$('#cuenta_gira').empty();
							var ArrayDatos = JSON.parse(data);
										$('#cuenta_gira').append( '<option value="">Seleccione una cuenta</option>' );
										$("#cuenta_gira").prop('required',true);
								      for(var i in ArrayDatos){
 										$('#cuenta_gira').append( '<option value="'+ArrayDatos[i].id+'">'+ArrayDatos[i].cuenta_banco+' '+ArrayDatos[i].propietario+'</option>' );
								      }
							$('.cuenta').fadeIn(500);
							$('.banco').fadeIn();
						})
						.fail(function(data) {
							//console.log("error"+data);
						});					
					//ajax traer cuentas
				}else{
					$('.cuenta').hide();
					$("#cuenta_gira").prop('required',false);
				}
		});
	//trae las cuentas del banco escogido #banco_gira


	//llamar a la vista #1
		view_info();
	//llamar a la vista #1

	$('#btn-1').on('click',function() {
		revisar_info();
	});
	$('#btn-4').on('click',function() {
		view_calcu();
	});
	$('#btn-2').on('click',function() {
		view_info();
	});
	$('#btn-3').on('click',function() {
		revisar_calcu();
	});

	$('#banco_gira').on('change', function() {
		$('#bank').text($('#bancos option:selected').text());
		$('#bank2').text($('#banco_gira option:selected').text());
	});

	$('#bancos').on('change', function() {
		$('#bank').text($('#bancos option:selected').text());
	});

	$('#num_cheq').on('keyup', function() {
		var str = $(this).val();
		str = str.toUpperCase();
		$('#cheq').text(str);
	});

	$('#benef').on('change', function() {
		$('#beneficiario').text($('#benef option:selected').text());
	});

	$('#endoso').on('keyup', function() {
		$('#endoso01').text($(this).val());
	});

	$('#interes,#btn-1').on('change', function() {
		calculos();
	});

	$('#num_dias,#interes').on('change', function(event) {
		calculos();
	});

     // Funcion carga de select cuando input file cambia 
      $("#file").change(function (){
       $("#descripcion_files").empty();

       var count_files = $(this).get(0).files.length;
            $('#cant_files').val(count_files);
        for (var i = 0; i < count_files; i++) {
           $("#descripcion_files").append("<div class='item form-group'><label for='descripcion_files' class='control-label col-md-3 col-sm-3 col-xs-12'>"+$(this).get(0).files[i].name+"</label></div>");

        };
     }); 
    // Funcion carga de select cuando input file cambia

	
});

var Cselect = function(){
	$("select:not(#cuenta_gira)").chosen({});
}

var calculos = function(){
		var int = parseFloat($('#interes').val());
			var val = $('#monto').maskMoney('unmasked')[0];
			var dia = parseInt($('#num_dias').val());
		var cuot = +(val*int)/30;
						cuot = Math.round(cuot);
		var valint = +(dia*cuot);
					valint = Math.round(valint);
			var valcheq = val-valint;
					valcheq = Math.round(valcheq/100)*100;

			$('#cuota_dia').val(cuot);
		$('#val_int').val(valint);
		$('#val_cheq').val(valcheq);
		$('#letras').load('php/numeros_letras.php?monto='+val);
		$('#m').text(val);
		$('#letras2').load('php/numeros_letras.php?monto='+valcheq);
		$('#m2').text(valcheq);
}

var view_info = function(){
	$('#calcu').hide();
	$('#cheques').hide();
	$('#info').show();
}
var view_calcu = function(){
		$('#info').hide();
		$('#calcu').show();
		$('#cheques').hide();
}
var view_cheques = function(){
		$('#info').hide();
		$('#calcu').hide();
		$('#cheques').show();
		efectivo = $('#banco_gira option:selected').text();
			if (efectivo == 'Seleccione un banco') {
				$('#bank2').text('Pago en efectivo');
			}
}

var revisar_info = function(){
	var codeerror = 0;
	var error = '<span class="color-red">Este campo es obligatorio<span>';


	dato = $('#num_cheq').val();
	if (dato == '') {
		$('#num_cheq-help').html(error).fadeIn(500).fadeOut(8000);
		$('#num_cheq').focus();
	codeerror = 0;
	}else{
		codeerror = 1;
	}
	dato = $('#benef').val();

	if (dato == '') {
		$('#benef-help').html(error).fadeIn(500).fadeOut(8000);
	codeerror = 0;
	}else{
		codeerror = 1;
	}
	dato = $('#monto').val();
	if (dato == '') {
		$('#monto-help').html(error).fadeIn(500).fadeOut(8000);
		$('#monto').focus();
		codeerror = 0;
	}else{
		codeerror = 1;
	}

	if (codeerror == 1) {
		calculos();
		view_calcu();
	}
	
}

var revisar_calcu = function(){


	var codeerror = 0;
	var error = '<span class="color-red">Este campo es obligatorio<span>';

	dato = $('#fondos').val();
	if (dato == '') {
		$('#fondos-help').html(error).fadeIn(500).fadeOut(8000);
	codeerror = 0;
	}else{
		codeerror = 1;
	}
	dato = $('#resp').val();
	if (dato == '') {
		$('#resp-help').html(error).fadeIn(500).fadeOut(8000);
	codeerror = 0;
	}else{
		codeerror = 1;
	}


//cambio de caratula
	if (codeerror == 1) {
		view_cheques();
		$('#bank2-help').html($('#cuenta_gira option:selected').text());
		var endoso01 = $('#endoso01').text();
			if (endoso01 == '') {
				$('#endoso01').text($('#benef option:selected').text());
			}
	};
	
}


//Calculo de dias habiles


var dia_habiles = function(dia,fecha){
	switch(dia) {
	    case 6:
	        	fecha.add(2, 'day');
	        break;
	    case 0:
	       		fecha.add(1, 'day');
	        break;
	}
	festivos(fecha);
	$('#fecha_con').val(fecha.format("YYYY-MM-DD"));
	cal_dias(fecha);
}

var festivos = function(fecha){
	mes = fecha.month() + 1;
	dia01 = fecha.date();
//array festivos
	var datos = [];
		datos[1] = [1,6]; // Primero de Enero,Reyes Magos Enero 6
		datos[3] = [20]; // San Jose Marzo 19
		datos[4] = [13,14]; //semana santa
		datos[5] = [1,29]; // Dia01 del Trabajo 1 de Mayo,dia01 de la ascensión
		datos[6] = [19,26]; // Corpus chisti,Sagrado corazon
		datos[7] = [3,20]; // San Pedro y San Pablo Junio 29,Independencia 20 de Julio
		datos[8] = [7,21]; // Batalla de Boyacá 7 de Agosto,Asunción Agosto 21
		datos[10] = [16]; // Dia01 de la raza
		datos[11] = [6,13]; // Todos los santos Nov 1,Independencia de cartagena
		datos[12] = [8,25]; // Maria Inmaculada 8 diciembre (religiosa),Navidad 25 de diciembre
//array festivos
	for (var i = 1 ; i < 13; i++) {
		
			if (typeof datos[i] !== 'undefined') {
				if (mes == i) {
					if (dia01 == datos[i][0]) {
							fecha.add(1, 'day');
						dia = fecha.day();
						dia_habiles(dia,fecha);
						$('#fecha_con').val(fecha.format("YYYY-MM-DD"));
						cal_dias(fecha);
					}
					if (dia01 == datos[i][1]) {
							fecha.add(1, 'day');
						dia = fecha.day();
						dia_habiles(dia,fecha);
						$('#fecha_con').val(fecha.format("YYYY-MM-DD"));
						cal_dias(fecha);
					}
				}
			}
	};

}

var cal_dias = function(fecha){
	var hoy = moment();
	var diferencia = fecha.diff(hoy,"days");
	$('#num_dias').val(diferencia + 2);

}
//Calculo de dias habiles


// Cambio de fecha on change
var cambio_fecha = function(){
		var fecha01 = $('#fecha_cheq').val();
		$('#fecha').text(fecha01);
		var fecha = moment(fecha01);
		dia = fecha.day();
		dia_habiles(dia,fecha);
}
// Cambio de fecha on change
