# My first ruby code executed on 09-24-18
# Cyril O.Balonwu

=begin
This is a block comment
aint that cool dog!
=end

=begin
first_num = 4;
second_num = 5;
ans = first_num * second_num;

puts ans;
=end

# Print to Screen using puts.

=begin
puts "My Name is Cyril";
puts 'My Name is Cyril Onochie Balonwu';
print "My name is Cyril Onochie Balonwu and initials is COB ";
print "You can call it Close Of Business ";
puts 'This is my last line'
=end

# Special characters and escape charactes
#  \t \n \\ \"
=begin
puts "my nick name is \"Scuby\" ";

puts 2 + 2
puts 2 + 2 * 5; # this does the order of operation first.
puts (2 +2) * 5
puts (2+2)**5
puts "c" + "at";
puts "Ono" + "chie";
=end




#Simple ASCII Art

puts "What character do you want to make the pyramid out of?"
character = gets.chomp

puts "How many rows of #{character}'s do you want?"
row_count = gets.chomp.to_i

character_count = 1
width = 100

row_count.times do
  puts (character * character_count).center(width)
  character_count += 2
end


lunch_order = {
    "Ryan" => "wonton soup",
    "Eric" => "hamburger",
    "Jimmy" => "sandwich",
    "Sasha" => "salad",
    "Cole" => "taco"
}

lunch_order.each do |name, order|
  puts "#{name}: #{order}"
end


s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |element| puts element }}

secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |hero, name|
  puts "#{hero}: #{name}"
end


puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

