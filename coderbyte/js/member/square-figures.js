function SquareFigures (num) {
	var go = true;
	var i = 1;
	while (go) {
		var square = i * i;
		var sq = square.toString();
		if (sq.length == num) return i;
		i++;
	}
}