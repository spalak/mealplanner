$(function(){
	var $greeting = $('h3#greeting');
	var today = new Date();
	var hourNow = today.getHours();

	if (hourNow > 18) {
		$greeting = 'Good evening';
	}else if (hourNow >12) {
		$greeting = 'Good afternoon';
	}else if (hourNow > 6) {
		$greeting = "Good morning";
	}else {
		$greeting = "Wecome";
	}

})

// var today = new Date();
// var hourNow = today.getHours();
// var greeting;
// function greet(){
// 	if (hourNow > 18) {
// 		greeting = 'Good evening';
// 	} else if (hourNow >12) {
// 			greeting = 'Good afternoon';
// 	} else if (hourNow > 6) {
// 		greeting = "Good morning";
// 	} else {
// 		greeting = "Wecome";
// 	}
// }


// element = document.getElementById('greeting');
// greet();


