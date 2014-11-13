puts "--What would you like to tell Grandma Ruby?"
news = gets.chomp

bye_count = 0

while bye_count < 2
	if news.upcase.include? "BYE"
		bye_count += 1
	end

	if news != news.upcase
		puts "Grandma: \"HUH?! WHAT'D YOU SAY??\""
		news = gets.chomp
	else
		puts "Grandma: \"Well of course not. Not Since #{1930 + rand(21)}.\""
		
		puts "--Anything else you'd like to say to Grandma?"
		response = gets.chomp
			
			if response.upcase == "NO"
				puts "--Okay. Say \"bye\" to Grandma:"
				news = gets.chomp
			else
				puts "--Well, go ahead."
				news = gets.chomp
			end
	end
end

puts "Grandma: \"Okay. Well, bye then. Young whipsnap.\""