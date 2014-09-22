function SquareFigures (num) {
	var i = 0;
	while (i >= 0) {
		var square = i * i;
		var sq = square.toString();
		if (sq.length == num) return i;
		i++;
	}
};