$(document).ready(function() {


	
     //data table
      var table = $('#TblCheques').DataTable({
        "destroy":true,
            "ajax":{
                "method":"POST",
                "url": "php/consulta_cheques_DT_devueltos.php"
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
		//console.log(data);
		cheque_id = (data.id);
    if (cheque_id != 'No hay registros...') {
          numero_cheque = (data.numero_cheque);
          modal_editar(cheque_id,numero_cheque);
    }
		
	});

//traer formulario dinamico
 $('#estado_cheque').change(function() {

    categoria = $('#estado_cheque').val();
    
       if (categoria == '2') {

         id_cheque = $('#id_cheque').val();

            $.post('php/consulta_cheques_estados.php',{'id_cheque': id_cheque,'fecha_cheque':'fecha_cheque'},function(data){
              $('#fecha_inicial').val(data);
              fechamin = moment(data);
              $('#formulario_dinamico #fecha_cheq').val(fechamin.format("YYYY-MM-DD"));
              $('#formulario_dinamico #fecha_cheq').attr('min', fechamin.format("YYYY-MM-DD"));
            });

          $('#formulario_dinamico').load('php/formulario_01_cheques_pendientes.php');
          $("#formulario_dinamico").trigger('create');

          $('#form_cheques').prop('action', 'php/e_registro_cheques_aplazar_devueltos.php');

       }else{
          $('#formulario_dinamico').html('');
          $('#form_cheques').prop('action', 'php/e_registro_cheques_consignado.php');
       }
 });
//traer formulario dinamico

//consultad de festivos en la fecha
$('#formulario_dinamico').on("change","#fecha_cheq",function(){
      var fecha = $('#formulario_dinamico #fecha_cheq').val();
      var fecha = moment(fecha);
          dia = fecha.day();
          dia_habiles(dia,fecha);

    id_cheque = $('#id_cheque').val();
    $.post('php/consulta_cheques_estados.php',{'id_cheque': id_cheque,'interes':'interes'},function(interes){
      $('#formulario_dinamico #interes').val(interes);
    });
    $.post('php/consulta_cheques_estados.php',{'id_cheque': id_cheque,'monto':'monto'},function(data){
      $('#formulario_dinamico #monto').val(data);
    });
    $.post('php/consulta_cheques_estados.php',{'id_cheque': id_cheque,'valor_girar':'valor_girar'},function(data){
      $('#formulario_dinamico #valor_girar').val(data);
    });
    setTimeout("calculos()", 400);
})
//consultad de festivos en la fecha

//Boton descartar
$('#descartar').click(function() {
  $('#estado_cheque option:selected').removeAttr('selected');
  $('#estado_cheque').trigger('chosen:updated');
  $('#modal_editar').modal('hide');
  $('#form_cheques')[0].reset();
  $('#formulario_dinamico').html('');

});
//Boton descartar

});

//FUNCIONES

modal_editar = function (cheque_id, numero_cheque){
	$('#modal_editar').modal('show');
	$('#id_cheque').val(cheque_id);
	$('#num_cheque').val(numero_cheque);
  //traer categorias de estado cheques
        $.ajax({
          url: 'php/consulta_cheques_estados.php',
          type: 'POST',
          data: {'paso01': 'paso01'},
        })
        .done(function(data) {
          //console.log("success"+data);
          $("#estado_cheque" ).empty();
          $("#estado_cheque" ).append( data );
          $("#estado_cheque").chosen({});
        })
        .fail(function() {
          console.log("error");
        })
        
  //traer categorias de estado cheques
	
}

var calculos = function(){
    interes =parseFloat($('#formulario_dinamico #interes').val());
    var val = parseInt($('#formulario_dinamico #monto').val());
    var dia = parseInt($('#formulario_dinamico #num_dias').val());
    var cuot = +(val*interes)/30;
      cuot = Math.round(cuot);
    var valint = +(dia*cuot);
      valint = Math.round(valint);
    var valcheq = val-valint;
      valcheq = Math.round(valcheq);
    $('#formulario_dinamico #cuota_dia').val(cuot);
    $('#formulario_dinamico #val_int').val(valint);
    $('#formulario_dinamico #monto').priceFormat({prefix: '$ ',suffix: '', centsLimit: 0});
    $('#formulario_dinamico #valor_girar').priceFormat({prefix: '$ ',suffix: '', centsLimit: 0});
    $('#formulario_dinamico #cuota_dia').priceFormat({prefix: '$ ',suffix: '', centsLimit: 0});
    $('#formulario_dinamico #val_int').priceFormat({prefix: '$ ',suffix: '', centsLimit: 0});
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
  $('#formulario_dinamico #fecha_con').val(fecha.format("YYYY-MM-DD"));
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
            $('#formulario_dinamico #fecha_con').val(fecha.format("YYYY-MM-DD"));
            cal_dias(fecha);
          }
          if (dia01 == datos[i][1]) {
              fecha.add(1, 'day');
            dia = fecha.day();
            dia_habiles(dia,fecha);
            $('#formulario_dinamico #fecha_con').val(fecha.format("YYYY-MM-DD"));
            cal_dias(fecha);
          }
        }
      }
  };

}

var cal_dias = function(fecha){
  var fechaA = moment($('#fecha_inicial').val());
  var diferencia = fecha.diff(fechaA,"days");
  $('#formulario_dinamico #num_dias').val(diferencia + 1);


}
//Calculo de dias habiles

