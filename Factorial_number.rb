def factorial num
	if num < 0
		"You can'take the factorial of a negative number!"
	end

	if num <= 1
		1
	else
		num * factorial(num-1) 
	end
end

puts factorial(10)
puts factorial(-10)