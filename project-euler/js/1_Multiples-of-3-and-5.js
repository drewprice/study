function MultiplesOf3And5 (lim) {
	var sum = 0;
	for (var i = lim - 1; i > 2; i--) {
		if (i % 3 == 0 || i % 5 == 0) sum += i;
	}
	return sum;
}