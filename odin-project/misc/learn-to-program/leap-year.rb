puts "This program, given a starting point and a place to stop, will list the leap year(s) that fell within that range."
puts ""

puts "--Please enter the year you'd like to begin with: "
starts = gets.chomp.to_i
puts "--Please enter the year you'd like to conclude with: "
ends = gets.chomp.to_i

puts ""
puts "------ Results ------"

current = starts

while current <= ends do 
	if current % 100 == 0
		if current % 400 == 0
			puts current
		end
	elsif current % 4 == 0
		puts current
	end

	current += 1
end

puts "---------------------"
puts ""