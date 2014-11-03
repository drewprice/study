sliderInt=1;
sliderNext=2;

$(document).ready(function() {
	$("#slider > img#1").fadeIn(400);
	startSlider();
});

function startSlider() {
	count = $("#slider > img").size();
	loop = setInterval(function() {

		if(sliderNext > count) {
			sliderNext = 1;
			sliderInt = 1;
		}

		$("#slider > img").fadeOut(200);
		$("#slider > img#" + sliderNext).fadeIn(600);

		sliderInt = sliderNext;
		sliderNext += 1;

	}, 3000)
}

function prev() {
	newSlide = sliderInt - 1;
	showSlide(newSlide);
}

function next() {
	newSlide = sliderInt + 1;
	showSlide(newSlide);
}

function stopLoop() {
	window.clearInterval(loop);
}

function showSlide(id) {
	stopLoop();

	if(id > count) {
		id = 1;
		sliderInt = 1;
	} else if (id < 1) {
		id = count;
	}

	$("#slider > img").fadeOut(200);
	$("#slider > img#" + id).fadeIn(600);

	sliderInt = id;
	id += 1;
	startSlider();
}

$("#slider > img").on("mouseenter", function() {
	stopLoop();
});

$("#slider > img").on("mouseleave", function() {
	startSlider();
})
