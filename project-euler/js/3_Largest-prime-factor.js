function IsPrime (num) {
	// Checks for prime number
	var numHalf = Math.round(num / 2);
	for (var i = numHalf; i > 2; i--) {
		if (num % i == 0) return false;
	}
	return true
};

function LargestPrimeFactor (num) {
	// Cut num in half & ensure numHalf is odd
	var numHalf = Math.round(num / 2);
	if (numHalf % 2 == 0) numHalf += 1;
	
	for (var i = numHalf; i >= 3; i -= 2) {
		// Check for odd factors
		if (num % i == 0) {
			// See if factor is prime
			if (IsPrime(i)) return i;
		}
	}
};