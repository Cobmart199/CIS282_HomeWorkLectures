# calculating our age in seconds.
#
# 1 year = 365 days * 24 hours * 60 miniutes * 60 seconds.


#print "Cyril you are "
#puts 41 * 365 * 24 * 60 * 60


# calculate with variables
=begin
seconds_in_minutes = 60;
hours_in_a_day = 24;
days_in_a_year = 365;
minitues_in_an_hour = 60;
=end

#puts 41 * days_in_a_year * hours_in_a_day * seconds_in_minutes * minitues_in_an_hour;

=begin
#prompting the user to enter data
print "Please enter your age: "
#user_age = gets.to_i; # to_i takes a string to converts the string to an integer
user_age = gets.chomp;
puts  user_age.inspect;
#user_age = user_age.to_i #this converts to integer;
user_age = user_age.to_f;
age_in_secs = user_age * days_in_a_year * hours_in_a_day * seconds_in_minutes * minitues_in_an_hour;

#Concatenation
puts "Your age in seconds is: " + age_in_secs.to_s;

#String interpolation
puts "Your age in seconds is: #{age_in_secs} and you are this old : #{user_age} " + " You are old son! " + user_age.to_s;

=end

# Ruby allows you to multiply string
#Think about using this on your header assignment
#puts "CyrilCyril";
#puts "Cyril - " * 10;
#
# Boolean logic
# if the light is red then stop (Englis)
=begin
light_color = "red";
if (light_color == "red")
  puts "stop"
end
=end
#Other types of decision making structures
# if, if/else, if/elseif, case or switch

=begin
light_color = "red";
if light_color == "red";
  puts "stop"
else
  puts "light is #{light_color}"
end

=end

############################ Day 6 - boolean logic continued ###################################
# conditional or comparison operators
=begin
a == b # equality
a < b  # les than
a > b  # greater than
a <= b # less than or equal to
a >= b # greather than or equal to
a !=b # not equal
=end

# if age is less than five print "its time to take a nap"
#
# #if/elsif/else
# #if boolean_expression
# # run  codeB
# #elsif boolean expression has no e in it
=begin
age = 6;
if age < 5
  puts "It\'s time to take a nap"
else
  puts "You\'re too old for a nap"
end
=end

# logical operators
# and or not # ruby allows these but DON'T USE THEM;
# && || ! # USE THESE OPERATORS INSTEAD
#
#Check to see if you can drive in WA state
# if you are 16 years or older and live in WA state you can drive.
=begin
age = 18
if(age < 16)
  puts "you can drive";
=end

#prompt user for their age
# print "please Enter your age ";
# age = gets.to_f;
# print "Please Enter your State ";
# state = gets.chomp.upcase;
#      1     5         2        4          3

# if age >= 16 && (state == "WA" || state == "ID")
#   puts "You are legal to drive in WA State or Idaho"
# elsif(age >=16 && state == "ID")
#   puts "You can drive in Idaho"
# else
#   puts "You are not legal to drive in WA or Idaho state"
# end

#10-01-18
# Loops
# puts "#" * 2; # this is not a loop; it prints it out 10 times
#
# 10.times do
#   # code to repeat 10 times
#   puts "#"
# end
# puts
#
# #times loop with a variable
# print " Please enter the number of loops "
# count = gets.to_i
#
# count.times do
#   puts "#"
# end
# puts

# times loop with an expression
# (count + 5).times do
#   print "^"
# end
# puts
#
# WHILE LOOP
# 2 PARTS OR 3 REQUIRED ELEMENTS
# 1. Starting Condition
# 2. Boolean expression
# 3. Change the value of the boolean expression
#
# syntax
# while boolean_expession_is_true
#   run this code
# end
#
# while i have gas in my tank keep driving
# gallons = 10; # number of gallons in tank
# while gallons != 0
#   puts "keep driving"
#   gallons = gallons - 1
# end
# puts "out of gas"
# count  = 1;
# while count <= 10
#   puts count
#   # puts count
#  # count = count + 1;
#   count += 1; # other shortcuts: -= *= /= %=
# end




puts "Enter the number of columns for the diamond: "


count = gets.chomp.to_i





# Loop from 1 up to the count they entered


# In each loop we loop from that many spaces for the row, then that many asterisks


# End with a new line. This forms the top of the diamond.


1.upto(count) do |i|


  i.upto(count - 1) { print " " }


  i.times { print " *" }


  print "\n"


end





# Subtract 1 so we don't double up the middle row


count = count - 1





# Now go from count down to 1


count.downto(1) do |i|


  i.upto(count) { print " " }


  i.times { print " *" }


  print "\n"


end

