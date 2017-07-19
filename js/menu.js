
$(document).ready(function() {
	    $( "#menu" ).load( "menu.php" );
		    setTimeout(classactive, 1000);
   		 $('.mask').fadeOut('slow/400/fast')
});

var classactive = function(){
	var pathname = window.location.pathname;
   	Pactive = pathname.split('/').reverse()[0];
	$('a[href*="'+Pactive+'"]').parent('li').addClass('active');
	$('a[href*="'+Pactive+'"]').parent('li').parent('ul').parent('li').addClass('open');
}
