$(function(){
	var $greeting = $('h3#greeting');
	var today = new Date();
	var hourNow = today.getHours();

	if (hourNow > 18) {
		$greeting = 'Good evening';
	} else if (hourNow >12) {
			$greeting = 'Good afternoon';
	} else if (hourNow > 6) {
		$greeting = "Good morning";
	} else {
		$greeting = "Wecome";
	}

})

// function greeting() {
// 	var today = new Date();
// 	var hourNow = today.getHours();
// 	var greeting;

// 	if (hourNow > 18) {
// 		greeting = 'Good evening';
// 	} else if (hourNow >12) {
// 			greeting = 'Good afternoon';
// 	} else if (hourNow > 6) {
// 		greeting = "Good morning";
// 	} else {
// 		greeting = "Wecome";
// 	}


// 	return document.write('<h3>' + greeting + '</h3>');

// }