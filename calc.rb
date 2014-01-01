#Exercises: Learn to Program
puts 1 + 2
puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts 1+2
puts 2*3
puts 5-8
puts 9/2

puts 5 * (12-8) + -15
puts 98 + (59872 / (13*8)) * -51

#  to comment all: use cmd / 
#  write a program that tells you the following:
#  Hours in a year

# 24 hrs in a day, 365 days in a year

puts 24 * 365 
puts 24 * 366  #account for leap year


#  How many minutes in a decade
#  60mins in a hour, 60*24 mins per day, mutily by 365 for 1 year
#  mutiply all above by 10 for decade
#  However there are two leap years in this time with
#  an extra day which gives you an extra 1440 minutes (60min * 24)x2. 
#  This is 2880. Add this to your total of 5256000 and it 
#  gives you 5258880. 

puts 60*24*(365*10)+ (1440*2)


#  Your age in seconds

# 60 sec in 1min = 60 * 60 = 3600 sec in 1 hr
# 3600 * 24 = 86400 sec in a day
# 86400 * 365= sec in a year = 31536000
# 31536000 * 33 = 1,040,688,000  

puts 60*60*24*(365*33)

# Calculate the authors age given he is 1025000000 sec old

puts 1025000000/(60*60*24*365)