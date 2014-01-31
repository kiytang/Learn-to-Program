# ask for favorite number. add 1 to the number and suggest 
# the result is bigger and better than favorite number.

puts 'What is you favourite number?'
num_fav = gets.chomp
num_bet = num_fav.to_i + 1 #convert to i inoreder to perform the addition
puts ''  #provides a space
puts 'Your favourite number ' + num_fav.to_s + ' is nice,
however ' + num_bet.to_s + ' is bigger and better!! '	