def translate(string)
	words = string.downcase.split
	new_words = []

	words.each do |w|
		new_words << translator(w)
	end
	new_words.join(" ")
end

## WORK HORSE ##
def translator(string)
	vowels = "aeiou"

											# Handle words beginning w/ vowels
	if vowels.include? (string[0])
		string << "ay"
	
											# Handle words beginning w/ consonants
	else
		first_consonants = []


		array = string.split("")
		array.each do |l|
			
											# Handle "qu", as in "quiet" & "square"
			if l == "q"
				first_consonants << "q"
				position = array.index("q")
				if array[position + 1] == "u"
					first_consonants << "u"
				end

			elsif vowels.include? (l)
											# Deletes leading consonants
				first_consonants.each do
					array.delete_at(0)
				end
				
				return "#{array.join}#{first_consonants.join}ay"
			else
				first_consonants << l
			end
		end
	end
end