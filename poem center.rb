#using the center method
line_width = 80
puts(			'Old mother Hubbard'.center(line_width))
puts('Sat in her cupboard'.center(line_width))
puts( 'Eating her curds and whey'.center(line_width))
puts('When along came a spider'.center(line_width))
puts('Who sat down beside her'.center(line_width))
puts('And scared her poor shoe dog away.'.center(line_width))

puts ' '


#using left jutify ljust and right justify rjust
line_width = 40
str = '--> text <--'
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width/2)) + str.rjust(line_width/2)