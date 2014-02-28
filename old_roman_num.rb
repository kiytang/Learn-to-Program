# Old-school Roman numerals. In the early days of Roman numerals,
# the Romans didn’t bother with any of this new-fangled subtraction
# “IX” nonsense. No sir, it was straight addition, biggest
# to littlest—so 9 was written “VIIII,” and so on. Write a method
# that when passed an integer between 1 and 3000 (or so) returns a
# string containing the proper old-school Roman numeral. In other
# words, old_roman_numeral 4 should return 'IIII'. Make sure to test
# your method on a bunch of different numbers. Hint: Use the integer
# division and modulus methods on page 37.
# For reference, these are the values of the letters used:
# I = 1 V = 5 X = 10 L = 50
# C = 100 D = 500 M = 1000

# we use {} on 'numerials ='' as opposed to a variable as we are able to 
# do more commands on it that a variable is not able to. 

order = [] #array allows us to use order.
#[n] is used to lookup


def numeral(number)
	numerals = {:I => 1, :V => 5, :X => 10, :L => 50, 
		:C => 100, :D => 500, :M => 1000}
	order = [:M,:D,:C,:L,:X,:V,:I]
	output = ""
	order.each do |n|
		if numerals[n] <= number
			times = number / numerals[n]
			remainder = number % numerals[n]
			output += n.to_s * times
			number = remainder
		end
	end
	output
end

puts numeral(4)
puts numeral(9)
puts numeral(37)
puts numeral(100)
puts numeral(3000)