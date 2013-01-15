$(function() {

	$('#clearAll').click(function() {
		$('form input:checked').each(function(i, el) {
			el.checked = false;
		});
	});

});