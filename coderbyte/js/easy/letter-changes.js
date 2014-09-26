function LetterChanges(str) {
	str = str.toLowerCase().split("");
	var alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
	// Change each letter
	for (var i = 0; i < str.length; i++) {
		if (/[a-z]/.test(str[i])) {
			if (str[i] === "z") {
				str[i] = "a";
			} else {
				alphaIndex = alphabet.indexOf(str[i]);
				str[i] = alphabet[alphaIndex + 1];
			}
		}
	};
	// Capitalize vowels
	for (var i = 0; i < str.length; i++) {
		if (/[aeiou]/.test(str[i])) str[i] = str[i].toUpperCase();
	};
	return str.join("")
};