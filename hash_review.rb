my_hash = {
    #key => value
    'tomato' => 'veggie',
    'onion' => 'veggie',
    'banana' => 'friut',
    'orange' => 'friut',
    'mango' => 'friuit',
    'grapes' => 'friut'
}

puts my_hash
puts my_hash.inspect
puts
my_hash.each do |food_name, food_type|
  puts "#{food_name} is a #{food_type}"
end

my_hash.each_key do |key|
  puts "The current key is #{key}"
      if key == 'tomato'
        my_hash[key] = 'fruit'
        puts "#{key} is not a #{my_hash[key]}"
      end
end
puts

my_hash.each_value do |value|
  puts "The current value is #{value}"
end

puts "Is my hash empty? #{my_hash.empty?}"

my_other_hash = {}
puts "Is my other hash empty? #{my_other_hash.empty?}"

puts "using standard: #{my_hash['grapes']}"
puts "using fetch: #{my_hash.fetch}"

puts "Does hash have key: apple? #{my_hash}"

puts my_hash.sort

# deleting hash
my_hash.delete_if { |key, value|
 value ==  "veggie"
}

puts "AFTER the delete #{my_hash}"

#Hash include or Has key. Which do you use?
