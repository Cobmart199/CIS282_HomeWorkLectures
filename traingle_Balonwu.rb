############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Right Triangles
#  Date:        12/10/2018
#  Class:       CIS 282
#  Description: Week 3 Project: Right Triangle
############################################################
#

puts "How many rows do you want?"
row_count = gets.chomp.to_i


# Set vars
n = row_count # Set number of rows
br = "\n" * 2


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



depth = row_count
number = 1

for i in 0..depth - 1
  for j in 0..i
    print  number.to_s.rjust(2, '0') + " "
    number += 1
  end
  puts
end

puts br


puts "Right triangle:#{br}"
topLine = row_count
bottomLine = topLine / 2

puts " *"

for i in 1..topLine do
  puts "*" + " " * i + "*"
end

for i in 1..bottomLine do
  print "* "
end
print "* *"