
/*Document Ready*/////////////////
$(document).ready(function(e) {
	
	/*Countdown
	*******************************************/
	$('#timer').countdown('2016/06/27', function(event) {
    $(this).html(event.strftime('%D' + ' days ' + '%H' + ' hours ' + '%M' + ' miniutes ' + '%S ' + ' seconds'));
  });
	
	
	/*Adding Placeholder Support in Older Browsers
	************************************************/
	$('input, textarea').placeholder();
	
});