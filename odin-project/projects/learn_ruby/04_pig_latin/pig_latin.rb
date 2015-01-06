def translate(string)
	if string[0].downcase.match (/[aeiou]/)
		string + "ay"
	else
		first = string[0]
		string[0] = ""
		string + first + "ay"
	end
end