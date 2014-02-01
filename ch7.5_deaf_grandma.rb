#Death grandma
# Write a Deaf Grandma program. Whatever you say to grandma (whatever
# you type in), she should respond with HUH?!  SPEAK UP, SONNY!, unless
# you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To
# make your program really believable, have grandma shout a different
# year each time; maybe any year at random between 1930 and 1950. (This
# part is optional, and would be much easier if you read the section on
# Ruby's random number generator at the end of the methods  chapter.)
# You can't stop talking to grandma until you shout BYE.
# Hint: Don't forget about chomp! 'BYE'with an Enter is not the same as
# 'BYE' without one!
# Hint 2: Try to think about what parts of your program should happen
# over and over again. All of those should be in your while loop.

# • Extend your Deaf Grandma program: What if grandma doesn't want you
# to leave? When you shout BYE, she could pretend not to hear you.
# Change your previous program so that you have to shout BYE three times
# in a row. Make sure to test your program: if you shout BYE three
# times, but not in a row, you should still be talking to grandma.

puts "Hey Hugo! It's your lovely Grandmother! How are you?"
reply = gets.chomp

while reply != 'BYE'
	if reply == reply.upcase
		puts 'NO, NOT SINCE ' + (rand(21)+1930).to_s + '!'
		reply = gets.chomp
	else
		puts 'HUH?!  SPEAK UP, SONNY!'
		reply = gets.chomp
	end
	if reply == 'BYE'
		puts 'CAN\'T HEAR YOU, SONNY!'
		reply = gets.chomp
		if reply == 'BYE'
			puts 'LETS GO PLAY SOME GOLF!'
			reply = gets.chomp
			if reply == 'BYE'	
				puts 'OKAY YOU WIN-BYE!'	
			end
		end	
	end
end

#randdom numbers:
# puts('The weatherman said there is a')
# puts(rand(101).to_s + '% chance of rain,')
# puts('but you can never trust a weatherman.')