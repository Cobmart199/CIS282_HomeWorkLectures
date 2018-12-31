############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Extra Credit Coins
#  Date:        26/11/2018
#  Class:       CIS 282
#  Description: Extra Credit Coins
############################################################

puts

puts " Please Enter the number of Quarters: "

quaters_Count = gets.chomp.to_i


puts " Please enter the number of dimes: "

dimes_Count = gets.chomp.to_i

puts " Please enter the number of nickels: "

nickels_Count = gets.chomp.to_i

puts " Please enter the number of pennies: "

pennies_Count = gets.chomp.to_i


def calculate_All (quaters_Count, dimes_Count, nickels_Count, pennies_Count)

  money_Count = (quaters_Count * 25) + (dimes_Count * 10) + (nickels_Count * 5) + (pennies_Count * 1)

  return money_Count / 100.to_f;
end

puts " You have #{quaters_Count} quaters, #{dimes_Count} dimes, #{nickels_Count} nickels and" \
              " #{pennies_Count} pennies for a total of $#{calculate_All(quaters_Count,dimes_Count,nickels_Count,pennies_Count)}"
