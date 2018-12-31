############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Extra Credit Reverse Digit
#  Date:        26/11/2018
#  Class:       CIS 282
#  Description: Extra Credit Reverse Digit
############################################################
puts
puts "Enter digits you want reversed example 12345 : "

r_digit = gets.chomp.to_i

def reverse_digit(r_digit)

  var_r = r_digit;

  cisla_nula  = 0

  while var_r > 0 do

    cisla_nula = cisla_nula * 10

    cisla_nula = cisla_nula + (var_r % 10)

    var_r = var_r / 10
  end

  return  cisla_nula

end

print "Reversed! "
puts "#{reverse_digit(r_digit)}"





