# note: below the code works fine but violates DRY as 
#       puts 'What a lovely name!' is repeated

# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.' 
# if name == 'Chris'
#   puts 'What a lovely name!'
# else
# 	if name == 'Katy'
# 		puts 'What a lovely name!'	
# 	end
# end

#the below avoid repeating and produces the same results:

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris' || name == 'Katy'
	puts 'What a lovely name!'
end
