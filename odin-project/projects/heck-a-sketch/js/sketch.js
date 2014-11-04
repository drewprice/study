function createGrid(dim) {
	var squares = dim * dim;
	var sides = (512/dim);

	for (var i = 1; i <= squares; i++) {
		$("<div />")
			.addClass("box")
			.attr('id', 'div' + i)
			.appendTo(".container");
	};

	$(".box")
		.height(sides)
		.width(sides);
};

function draw() {
	$(".box")
		.on('mouseenter', function() {
			$(this).addClass("highlight");
		})
		.on('click', function() {
			$(this).removeClass("highlight")
		});
}

$(document).ready(function() {

	createGrid(16);

	draw();

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
			
			input = prompt("How many squares would you like on each side? Think powers of two (2, 4, 8, 16...).");
			if (isNaN(input)) {
				alert(input + "? Nope. Numbers only please.");
				input = 2;
			}
			if (input > 64) {
				boxes = input * input;
				alert("Making " + boxes + " tiny squares. It may take a moment...")
			}

			$(".container").empty();
			
			createGrid(input);

			draw();
		});

});