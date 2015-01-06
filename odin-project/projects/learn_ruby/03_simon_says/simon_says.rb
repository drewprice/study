def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, n = 0)
	if n == 0
		"#{string} #{string}"
	else 
		([string] * n).join(" ")
	end
end

def start_of_word (string, n)
	string[0, n]
end

def first_word (string)
	array = string.split
	array[0]
end

def titleize (string)
	array = string.downcase.split
	small_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "over", "to", "up", "and", "as", "but", "it", "or", "nor"]
	array.each do |word|
		if small_words.include? (word)
			word.downcase!
		else
			word.capitalize!
		end
	end
	array[0].capitalize!
	array.join(" ")
end