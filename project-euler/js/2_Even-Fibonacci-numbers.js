function EvenFibonacciNumbers (lim) {
	// Create Fibonacci sequence up to lim
	var arr = [1,2];
	for (var i = 3; i < lim; i++) {
		var next = arr[arr.length - 1] + arr[arr.length - 2];
		if (i == next) arr.push(i);
	}
	// Find sum of evens
	var sum = 0;
	for (var i = 0; i < arr.length; i++) {
		if (arr[i] % 2 == 0) sum += arr[i];
	}
	return sum
}