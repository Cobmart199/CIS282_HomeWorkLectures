############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Array Histogram
#  Date:        10/31/2018
#  Class:       CIS 282
#  Description: Week 5 Project: Array Histogram
###########################################################

#create a function to handle and print the header of the application

def header(my_array, index, cut_off, dis_chart)
  ( my_array.count {|my_array|
                      my_array >= index  &&
                                   my_array <= cut_off}).to_s.rjust((dis_chart)
  )
end

my_array = Array.new
cut_off = 10
isAvail = 3
range = 1
dis_chart = 2
index = 1
loop_count = 200

#loop through 200 times and assign random numbers to the the array index
for i in 1..loop_count do
  my_array.push(rand(1..100)).sort!
end

puts
#display the chart header
puts "  Range     #Found      Chart" "\n" " -------     ------    ------------------------------"
print "01 -  10      |#{header(my_array, index, cut_off, dis_chart)}|     "

my_array.each do |i|

  if i > cut_off
    print "\n"
    #create the increments of 10 to display the string
    index = index +  10
    cut_off = cut_off +  10

    #set the index and the cutoff; use the to string method
    print "#{index.to_s.center(range)} "
    print "- #{cut_off.to_s.rjust(isAvail)}      "
    print "|#{header(my_array, index, cut_off, dis_chart)}|     *"
  else
    print "*"
  end
end
