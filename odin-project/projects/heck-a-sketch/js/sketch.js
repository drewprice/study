function createGrid(dim) {
	squares = dim * dim;
	sides = (512/dim);

/*	$(".box")
		.css(
		{
			'height': 'sides',
			'width': 'sides'
		});*/

	for (var i = 1; i <= squares; i++) {
	$("<div />")
		.addClass("box")
		.attr('id', 'div' + i)
		.appendTo(".container");
	};
};

$(document).ready(function() {
	
	createGrid(16);

	$(".box")
		.on('mouseenter', function() {
			$(this).addClass("highlight");
		})
		.on('click', function() {
			$(this).removeClass("highlight")
		});

	$("#invert")
		.on("click", function() {
			$(".container").find(".box").toggleClass("highlight");
		});

	$("#clear")
		.on("click", function() {
			$(".container").find(".highlight").removeClass("highlight");
		});

// Create a new grid with user defined dimensions
	$("#new")
		.on("click", function() {
			
			input = prompt("How many squares per side would you like?");

			$(".container").empty();
			
			createGrid(input)
		});

});