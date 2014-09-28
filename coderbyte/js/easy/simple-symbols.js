function SimpleSymbols (str) {

	// str must contain "+" and letter(s), and must not begin or end with a letter
	if (!/[+]/g.test(str) || !/[a-z]/.test(str) || /^[a-z]/i.test(str) || /$[a-z]/i.test(str)) return false;
	
	// Compare each letter to its predecessor and successor 
	var arr = str.split("");
	for (var i = 1; i < arr.length - 1; i++) {
		if (/[a-z]/gi.test(arr[i])) {
			if (arr[i - 1] != "+" || arr[i + 1] != "+") return false;
		}
	}
	
	return true
}