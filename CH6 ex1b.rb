# write a program that asks for your first, middle and last 
# name separately and then add those lengths together  

puts 'What\'s your first name?'
f_name = gets.chomp
puts 'What\'s your middle name?'
m_name =  gets.chomp
puts 'What\'s your last name?'
l_name = gets.chomp

full_name = f_name + ' ' + m_name + ' ' + l_name

puts 'Did you know there are ' + full_name.length.to_s + ' characters'
puts 'in your name, ' + full_name + '?'

