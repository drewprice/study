puts "--Give me your words"

words = []
input = "nah"

while input != "" do 
	input = gets.chomp
	words[words.length] = input
end

puts words.sort