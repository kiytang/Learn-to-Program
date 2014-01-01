bottles = 99

# used > 2 aso that the plural bottles conforms correctly
while bottles > 2
	puts "#{Bottles} bottles of beer on the wall, "
	puts "#{bottles} bottles of beer,"
	puts "You take one down and pass it around," 
	bottles -= 1
	puts "#{bottles} bottles of beer on the wall!"
	puts
end

puts "2 bottles of beer on the wall,"
puts "2 bottles of beer,"
puts "Take one down, pass it around,"
puts "1 more bottle of beer on the wall!"

puts

puts "1 bottle of beer on the wall,"
puts "Only 1 bottle of beer,"
puts "Take it down, pass it around,"
puts "No more bottles of beer on the wall!"
puts "Need to buy another 99 bottles!!"
