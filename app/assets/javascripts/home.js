$(function() {
	$.ajax({
      url: '/home/poll.js',
      dataType: 'script'
	}).success(function(data){
		console.log('success');
		console.log(data);
	}).error(function(e) {
		console.log('error');
		console.log(e);			
	});
	
	$('body').animate({
	  'background-color': 'hsl(120, 10%, 100%)'
	}, 5000, function() {
		console.log('done');
	});
});