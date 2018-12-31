# Set vars
n = 4 # Set number of rows
br = "\n" * 2


# Simple loop

puts "Right triangle:#{br}"
for i in 1..n do
  puts "* " * i
end
puts br

=begin
simple loop result:
*
* *
* * *
* * * *
=end


# Countdown loop

puts "Inverted right triangle:#{br}"
n.downto(0) do
  puts "* " * n
  n -= 1
end
puts br

=begin
countdown loop result:
* * * *
* * *
* *
*
=end


# Function loop

puts "Inverted pyramid:#{br}"
n = 4 # Reset number of rows

for i in 1..n do
  # Use a func to reduce repetition
  def printer(var, str)
    print "#{str}" * (2 * var - 1)
  end

  printer(i, " ")
  printer(n, "* ")
  print "\n"
  n -= 1
end
puts br

=begin
function loop result:
 * * * * * * *
   * * * * *
     * * *
       *
=end


# Count up loop

puts "Close pyramid:#{br}"
n = 4 # Set number of rows
i = 1

1.upto(n) do
  #n.times do
  #  print ' '
  #end
  print ' ' * n

  #(2 * i - 1).times do
  #  print '*'
  #end
  print '*' * (2 * i -1)

  print "\n"

  n -= 1
  i += 1
end
print br

=begin
count up loop result:
    *
   ***
  *****
 *******
=end