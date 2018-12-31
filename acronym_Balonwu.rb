############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Extra Credit Acronym
#  Date:        26/11/2018
#  Class:       CIS 282
#  Description: Extra Credit Acronym
############################################################

puts "Please Enter a complete English Sentence: "

var_words = gets.chomp.to_s

def acronym(var_words)
  # In the below regular expression, the forward slash w will handle any word character.

  return var_words.scan(/\b\w/).join.upcase

end

puts "Your sentence in acronyms is: #{acronym(var_words)} "
