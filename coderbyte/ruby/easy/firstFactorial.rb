def FirstFactorial(num)
	one_less = num - 1
	while one_less > 0 do 
		num *= one_less
		one_less -= 1
	end
	num
end