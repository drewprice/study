def add (number_1, number_2)
	number_1 + number_2
end

def subtract (number_1, number_2)
	number_1 - number_2
end

def sum (array)
	sum = 0
	array.each do |n|
		sum += n
	end
	sum
end

def multiply(array)
	product = 1
	array.each do |n|
		product *= n
	end
	product
end

def power(number_1, number_2)
	number_1 ** number_2
end

def factorial(n) 
	if n == 0
		n = 1
	else
		n * factorial(n-1)
	end
end