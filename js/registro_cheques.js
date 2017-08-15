$(document).ready(function() {

	$('#por_consig').load('php/consulta_cheques.php?a=1');
	$('#bancos').load('php/consulta_bancos.php');
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

	//trae las cuentas del banco escogido #banco_gira
		$('#banco_gira').on('change',function() {
			banco = $('#banco_gira').val();
				if (banco != '') {
					//ajax traer cuentas
						$.ajax({
							url: 'php/consulta_bancos_trust.php',
							type: 'POST',
							data: {'cuentas_trust': 'cuentas_trust'},
						})
						.done(function(data) {
							console.log("success"+data);
							$('#cuenta_gira').empty();
							var ArrayDatos = JSON.parse(data);
								      for(var i in ArrayDatos){
 										$('#cuenta_gira').append( '<option value="'+ArrayDatos[i].id+'">'+ArrayDatos[i].cuenta_banco+' '+ArrayDatos[i].propietario+'</option>' );
								      }
							$('.cuenta').fadeIn(500);
						})
						.fail(function(data) {
							console.log("error"+data);
						});					
					//ajax traer cuentas
				}
		});
	//trae las cuentas del banco escogido #banco_gira

	//$('.cuenta').hide();
	$('#calcu').hide();
	$('#cheques').hide();
	$('#info').show();

	$('#btn-1').on('click',function() {
		$('#info').hide();
		$('#calcu').show();
		$('#cheques').hide();
	});
	$('#btn-4').on('click',function() {
		$('#info').hide();
		$('#calcu').show();
		$('#cheques').hide();
	});
	$('#btn-2').on('click',function() {
		$('#info').show();
		$('#calcu').hide();
		$('#cheques').hide();
	});
	$('#btn-3').on('click',function() {
		$('#info').hide();
		$('#calcu').hide();
		$('#cheques').show();
	});

	$('#bancos').on('change', function() {
		$('#bank').text($('#bancos option:selected').text());
		$('#bank2').text($('#bancos option:selected').text());
	});

	$('#num_cheq').on('keyup', function() {
		var str = $(this).val();
		str = str.toUpperCase();
		$('#cheq').text(str);
	});

	$('#benef').on('keyup', function() {
		$('#endoso').val($(this).val());
		$('#persona').text($(this).val());
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

