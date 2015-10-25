$(document).ready(function(){
	var $greeting = $('#greeting');
	var today = new Date();
	var hourNow = today.getHours();

	if (hourNow > 18) {
		$greeting.append('Good evening');
	}else if (hourNow >12) {
		$greeting.append('Good afternoon');
	}else if (hourNow > 6) {
		$greeting.append('Good morning');
	}else {
		$greeting.append('Welcome');;
	}

})

