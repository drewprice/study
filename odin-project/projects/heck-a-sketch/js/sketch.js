// Functions
	/* Build grid */
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

	/* Initialize sketching */
	function draw() {
		$(".box")
			.on('mouseenter', function() {
				$(this).addClass("highlight");
			})
			.on('click', function() {
				$(this).removeClass("highlight")
			});
	}

// Application
	$(document).ready(function() {

		/* Initialize */
		createGrid(16);
		draw();

		/* User Controls */
		$("#invert")
			.on("click", function() {
				$(".container").find(".box").toggleClass("highlight");
			});

		$("#clear")
			.on("click", function() {
				$(".container").find(".highlight").removeClass("highlight");
			});

		$("#new")
			.on("click", function() {
				
				input = prompt("How many squares would you like on each side? Think powers of two (2, 4, 8, 16...).");
				/* Deal with oddities */
					// Handle non-numerical user input
					if (isNaN(input)) {
						alert(input + "? Nope. Numbers only please.");
						input = 2;
					}
					// Handle prompt cancellation
					if (input == null) return;
					// Notify user of slow build
					if (input > 64 && input < 129) {
						boxes = input * input;
						alert("Making " + boxes + " tiny squares. It may take a moment...")
					}
					// Jimmy's Error
					if (input > 128) {
						boxes = input * input;
						alert(boxes + " tiny squares is too damn much. How about 128x128 instead? Yeah yeah, let's do that. Cool.")
						input = 128;
					}

				// Empty current .container
				$(".container").empty();
				// Initialize new grid
				createGrid(input);
				draw();
			});
		
		/* Link to source code */
			$('#heck').hover(function() {
			    $(this).addClass('spotlight')
			    	.text("< code/ >").appendTo(this);
			}, function() {
			    $(this).removeClass('spotlight')
			    	.text("heckasketch").appendTo(this);
			});

	});