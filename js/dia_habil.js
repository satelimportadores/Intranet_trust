$(document).ready(function() {
	 
var fecha = new Date('2017/09/30');
		document.write(fecha+'<br>');
		dia = fecha.getDay();
		dia_habiles(dia,fecha);

});

var dia_habiles = function(dia,fecha){
	switch(dia) {
	    case 6:
	        	fecha.setDate( fecha.getDate() + 2);
	        break;
	    case 0:
	       		fecha.setDate( fecha.getDate() + 1);
	        break;
	}
	festivos(fecha);
	document.write(fecha+'<br>');

}

var festivos = function(fecha){
	mes = fecha.getMonth() + 1;
	dia01 = fecha.getDate();
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
						fecha.setDate( fecha.getDate() + 1);
						document.write(fecha+'<br>');
						dia = fecha.getDay();
						dia_habiles(dia,fecha);
					}
					if (dia01 == datos[i][1]) {
						fecha.setDate( fecha.getDate() + 1);
						document.write(fecha+'<br>');
						dia = fecha.getDay();
						dia_habiles(dia,fecha);
					}
				}
			}
	};

}
