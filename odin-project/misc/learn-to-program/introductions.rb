puts "Hey. What's your first name?"
first_name = gets.chomp.capitalize

puts "Cool. Do you have a middle name?"
has_middle = gets.chomp.downcase

	if has_middle == "yes"
		puts "What is it?"
		middle_name = gets.chomp.capitalize
	else
		puts "Alright. Whatevs."
		middle_name = ""
	end

puts "What is your last name?"
last_name = gets.chomp.capitalize

if middle_name == "" 
	full_name = "#{first_name} #{last_name}"
else
	full_name = "#{first_name} #{middle_name} #{last_name}"
end

puts "#{full_name} is your name. What is your favorite number?"
bigger_number = gets.chomp.to_i + 1

puts "#{bigger_number} is bigger. Why don't you like #{bigger_number}?"
puts "You're sort of a dummy, #{full_name}."
puts ""