#break statement
# breaks out of the loop
#
# count = 0
# print "Please enter a number between 1 and 10: "
# user_num = gets.to_i
#
# while count <= 10
#   puts count
#   if count == user_num
#     print "Is this your card? "
#     break
#   end
#   count += 1
# end
#
# next statement
# Jumps to the next iteration of the most internal loop

# count = 0
# while count <=10
#   count += 1
#   if count == 3
#     next
#   else
#     puts count
#   end
# end
#
 #count = 5
 # while count <=10
 #   print count
 #   count +=1
 # end
 #
 # count2 = 50
 # while count2 <= 100
 #   puts "\t#{count2}"
 #   count2 += 10
 # end
#
#
# count = 5
# while count <= 10
#   puts count
#
#   count2 = 50
#   while count2 <= 100
#     puts "\t#{count2}"
#     count2 += 10
#   end
#   count += 1
# end
#
#
# payRoll assignment
# money_amount = 20.50
# puts format("%.2f",20.5)
#
# puts sprintf("%.2f", 30.5)
#
# puts "%.2f" % 20.5
#
#
# puts format("%.2f",money_amount)
#
# puts sprintf("%.2f", money_amount)
#
# puts "%.2f" % money_amount
#
# puts "Net Pay: $#{money_amount}"
#
# formatted_number = format("%.2f", money_amount)
# puts "my formatted variable: #{formatted_number}"
#
# Set vars
n = 10 # Set number of rows
br = "\n" * 2


# Simple loop
#https://gist.github.com/JWasdin/487323708514ca3f9655b1dd344b06fc
puts "Right triangle:#{br}"
for i in 1..n do
  puts "* " * i
end
puts br


puts "Inverted right triangle:#{br}"
n.downto(0) do
  puts "* " * n
  n -= 1
end
puts br


depth = 6
number = 1

for i in 0..depth - 1
  for j in 0..i
    print  number.to_s.rjust(2, '0') + " "
    number += 1
  end
  puts
end

