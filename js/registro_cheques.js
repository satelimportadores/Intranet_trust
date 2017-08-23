$(document).ready(function() {


	$('.cuenta').hide();
	$('.endosohide').hide();
	$('#por_consig').load('php/consulta_cheques.php?a=1');
	$('#bancos').load('php/consulta_bancos.php');
	$('#benef').load('php/consulta_clientes_datos.php');
	$('#interes').load('php/consulta_interes.php');
	$('#banco_gira').load('php/consulta_bancos_trust.php?bancos_trust');
	
	

	setTimeout(Cselect, 1000);
	
	$('#fecha_cheq').on('change',function(){
		var fecha = $('#fecha_cheq').val();
		$('#fecha').text(fecha);
		$.post('php/consulta_fechas.php', {fecha: fecha}, function(data) {
		$('#fecha_con').val(data);
		var con = $('#fecha_con').val();
		$('#fecha2').text(con);
			$.post('php/consulta_fechas_dif.php', {fech: con}, function(data) {
			$('#num_dias').val(data);
			});
		});
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
							console.log("success"+data);
							$('#cuenta_gira').empty();
							var ArrayDatos = JSON.parse(data);
										$('#cuenta_gira').append( '<option value="">Seleccione una cuenta</option>' );
										$("#cuenta_gira").prop('required',true);
								      for(var i in ArrayDatos){
 										$('#cuenta_gira').append( '<option value="'+ArrayDatos[i].id+'">'+ArrayDatos[i].cuenta_banco+' '+ArrayDatos[i].propietario+'</option>' );
								      }
							$('.cuenta').fadeIn(500);
						})
						.fail(function(data) {
							console.log("error"+data);
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

	$('#monto,#interes,#btn-1').on('change click', function() {
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
		var val = parseInt($('#monto').val());
		var dia = parseInt($('#num_dias').val());
		var cuot = +(val*int)/30;
		cuot = cuot.toFixed();
		var valint = +(dia*cuot);
		valint = valint.toFixed();
		var valcheq = val-valint;
		valcheq = valcheq.toFixed();
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
}

var revisar_info = function(){
	var codeerror = 0;
	var error = '<span class="color-red">Este campo es obligatorio<span>';

	dato = $('#bancos').val();
	if (dato == '') {
		$('#bancos-help').html(error).fadeIn(500).fadeOut(8000);
	codeerror = 0;
	}else{
		codeerror = 1;
	}
	dato = $('#num_cheq').val();
	if (dato == '') {
		$('#num_cheq-help').html(error).fadeIn(500).fadeOut(8000);
		$('#num_cheq-help').focus();
	codeerror = 0;
	}else{
		codeerror = 1;
	}
	dato = $('#benef').val();
	if (dato == '') {
		$('#benef-help').html(error).fadeIn(500).fadeOut(8000);
		$('#benef-help').focus();
	codeerror = 0;
	}else{
		codeerror = 1;
	}
	dato = $('#monto').val();
	if (dato == '') {
		$('#monto-help').html(error).fadeIn(500).fadeOut(8000);
		$('#monto-help').focus();
		codeerror = 0;
	}else{
		codeerror = 1;
	}
	dato = $('#fecha_cheq').val();
	if (dato == '') {
		$('#fecha_cheq-help').html(error).fadeIn(500).fadeOut(8000);
		$('#fecha_cheq-help').focus();
		codeerror = 0;
	}else{
		codeerror = 1;
	}
	// dato = $('#endoso').val();
	// if (dato == '') {
	// 	$('#endoso-help').html(error).fadeIn(500).fadeOut(8000);
	// 	$('#endoso-help').focus();
	// 	codeerror = 0;
	// }else{
	// 	codeerror = 1;
	// }
//cambio de caratula
	if (codeerror == 1) {
		view_calcu();
	};
	
}

var revisar_calcu = function(){
	var codeerror = 0;
	var error = '<span class="color-red">Este campo es obligatorio<span>';

	dato = $('#resp').val();
	if (dato == '') {
		$('#resp-help').html(error).fadeIn(500).fadeOut(8000);
	codeerror = 0;
	}else{
		codeerror = 1;
	}
	dato = $('#banco_gira').val();
	if (dato == '') {
		$('#banco_gira-help').html(error).fadeIn(500).fadeOut(8000);
	codeerror = 0;
	}else{
		codeerror = 1;
	}

//cambio de caratula
	if (codeerror == 1) {
		view_cheques();
		$('#bank2-help').html($('#cuenta_gira option:selected').text());
	};
	
}
