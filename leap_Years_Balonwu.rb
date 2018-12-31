############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Extra Leap Year
#  Date:        26/11/2018
#  Class:       CIS 282
#  Description: Extra Credit Leap Year
############################################################

puts

puts "Enter start year"

year_first = gets.chomp.to_i

puts "Enter end year "

year_second = gets.chomp.to_i

print "Leap Years between #{year_first} and #{year_second}: "

(year_first..year_second).each do |leap_year|

  next if leap_year % 100 == 0 && leap_year % 400 != 0

  next if leap_year % 4 != 0

    print  leap_year.to_s + ","

end

