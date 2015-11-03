// Create a function to highlight an image using JQuery

var about_ready = function(){
	var $divPictures = $('div.flex-item') // Create a variable to hold the list items on the page
	$divPictures.on('mouseenter click', function(event){ //create a function that looks for clicks or mouseenter
		// $(this).children('p').children('span').remove();
		event.preventDefault(); // prevent default click from sending to a picture
		var $this = $(this);
		$this.addClass("highlighted-image"); // change class if event occurs
		$divClass = $this.attr('class').split(" ")[0]; // create a variable to store only the first class of the parent element
		$this.children('p').append('<span> ('+$divClass+') </span>'); // add a span for the parent element if it's the correct item
	});

	$divPictures.on('mouseleave', function(){ // create a function to remove class and span after mouse leaves
		$(this).removeClass("highlighted-image");
		$(this).children('p').children('span').remove();

	});
}

$(about_ready);
// Something with turbolinks gem causes this jquery to not be ready if from a link_to helper; the two below
// lines are to make sure the jquery works if the page is refreshed or if the link is navigated to by URL
// $(document).ready(about_ready);
// $(document).on('page:load', about_ready);


// $(document).on('page:load', function() {
// 	var $divPictures = $('div.flex-item') // Create a variable to hold the list items on the page
// 	$divPictures.on('mouseenter click', function(event){ //create a function that looks for clicks or mouseenter
// 		event.preventDefault(); // prevent default click from sending to a picture
// 		var $this = $(this);
// 		$this.addClass("highlighted-image"); // change class if event occurs
// 		$divClass = $this.attr('class').split(" ")[0]; // create a variable to store only the first class of the parent element
// 		$this.children('p').append('<span> ('+$divClass+') </span>'); // add a span for the parent element if it's the correct item
// 	});

// 	$divPictures.on('mouseleave', function(){ // create a function to remove class and span after mouse leaves
// 		$(this).removeClass("highlighted-image");
// 		$(this).children('p').children('span').remove();

// 	});

// });

// $(document).ready(function() {
// 	var $divPictures = $('div.flex-item') // Create a variable to hold the list items on the page
// 	$divPictures.on('mouseenter click', function(event){ //create a function that looks for clicks or mouseenter
// 		event.preventDefault(); // prevent default click from sending to a picture
// 		var $this = $(this);
// 		$this.addClass("highlighted-image"); // change class if event occurs
// 		$divClass = $this.attr('class').split(" ")[0]; // create a variable to store only the first class of the parent element
// 		$this.children('p').append('<span> ('+$divClass+') </span>'); // add a span for the parent element if it's the correct item
// 	});

// 	$divPictures.on('mouseleave', function(){ // create a function to remove class and span after mouse leaves
// 		$(this).removeClass("highlighted-image");
// 		$(this).children('p').children('span').remove();

// 	});

// });