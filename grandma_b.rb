puts 'Hello! what do you want?'
reply = gets.chomp

while reply != 'BYE'
	if reply == reply.upcase
		puts 'NO, NOT SINCE ' +(rand(21)+1930).to_s + '!'
		reply = gets.chomp
	else 
		puts 'HUH?!  SPEAK UP, SONNY!'
		reply = gets.chomp
	end
	if reply == 'BYE'	
	end
end