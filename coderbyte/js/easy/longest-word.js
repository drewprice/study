function LongestWord (sen) {
	// Create array of words
	var words = sen.match(/[a-z|0-9]+/gi);
	
	// Create an array of arrays storing words with their length & position
	var arr = [];
	for (var i = 0; i < words.length; i++) {
		arr.push([words[i], words[i].length, i+1])
	};
	
	// Pop word with the greatest length
	var ansArr = arr.sort(function (a, b){return a[1] - b[1]}).pop()
	
	// Check for other words of equal length
	var eqArr = [ansArr];
	for (var i = 0; i < arr.length; i++) {
		var current = arr[i]
		if (current[1] == ansArr[1]) eqArr.push(current);
	}
	if (eqArr.length > 1) ansArr = eqArr.sort(function (a, b) {return a[2] - b[2]}).shift();
	
	// Return the longest word that appears first
	return ansArr[0]
}