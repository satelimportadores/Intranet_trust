$(document).ready(function() {
	$('#seccion02').fadeOut();
	//traer numeracion del ultimo recibo
		$.ajax({
			url: 'php/consulta_cheques_pendientes_recibo.php',
			type: 'POST',
			data: {'cheque_id': cheque_id},
		})
		.done(function(data) {
			//console.log("success"+data);
			if (data == 0) {
				$('#seccion01').fadeOut();
				$('#seccion02').fadeIn();
				
			}else{
				$('#seccion02').fadeOut();
				var ArrayInfo = jQuery.parseJSON(data);
				organizar_info(ArrayInfo);
			}


		})
		
	//traer numeracion del ultimo recibo
});

organizar_info = function(ArrayInfo){

	            cheque_id = ArrayInfo[0].id;
            $('#cheque_id').html(cheque_id);

			numero_recibo = ArrayInfo[0].id_recibo;
            $('#numero_recibo').html(numero_recibo);
            responsable = ArrayInfo[0].responsable;
            $('#responsable').html('Responsable: '+responsable);
            cardname = ArrayInfo[0].cardname;
            $('#cardname').html(cardname);
            beneficiario = ArrayInfo[0].beneficiario;
            $('#beneficiario').html('C.C. / NIT.: '+beneficiario);
            telefono = ArrayInfo[0].telefono;
            $('#telefono').html('Teléfono: '+telefono);
            ciudad = ArrayInfo[0].ciudad;
            $('#ciudad').html(ciudad);
            direccion = ArrayInfo[0].direccion;
            $('#direccion').html(direccion);
            valor_girar = ArrayInfo[0].valor_girar;
            $('#valor_girar').html(valor_girar);
            	$('#valor_girar').priceFormat({clearPrefix: true, clearSuffix: true, suffix: '$',centsLimit: 0});
			nom_banco = ArrayInfo[0].nom_banco;
			numero_cheque = ArrayInfo[0].numero_cheque;
            	$('#nom_banco').html(nom_banco+' Cheque numero: '+numero_cheque);
            monto = ArrayInfo[0].monto;
            $('#monto').html(monto);
            	$('#monto').priceFormat({clearPrefix: true, clearSuffix: true, suffix: '$',centsLimit: 0});
            $('#cambio').html(valor_girar);
            	$('#cambio').priceFormat({clearPrefix: true, clearSuffix: true, suffix: '$',centsLimit: 0});

         	dias = ArrayInfo[0].dias;
            $('#dias').html(dias);
            tasa_usura = ArrayInfo[0].tasa_usura;

            interesUsuaraDiario = ((((tasa_usura/100)*monto)/30)*dias);
            $('#tasa_usura').html(interesUsuaraDiario);

            	//$('#tasa_usura').priceFormat({clearPrefix: true, clearSuffix: true, suffix: '$',centsLimit: 2});
            papeleriaDiario = ((((0.0075)*monto)/30)*dias);
            $('#papeleria').html(papeleriaDiario);

            	//$('#tasa_usura').priceFormat({clearPrefix: true, clearSuffix: true, suffix: '$',centsLimit: 2});
            cuatroxmilDiario = ((((0.004)*monto)/30)*dias);
            $('#4x1000').html(cuatroxmilDiario);
            	//$('#tasa_usura').priceFormat({clearPrefix: true, clearSuffix: true, suffix: '$',centsLimit: 2});

           subtotal = ((monto-valor_girar)-interesUsuaraDiario-papeleriaDiario-cuatroxmilDiario) 	

           $('#estudio').html(subtotal);

           $('#total_final').html(monto-interesUsuaraDiario-papeleriaDiario-cuatroxmilDiario-subtotal);
            //	$('#total_final').priceFormat({clearPrefix: true, clearSuffix: true, suffix: '$',centsLimit: 0});

            interes_pactado = ArrayInfo[0].interes;
            $('#interes_pactado').html('interés pactado: '+interes_pactado);

            
}