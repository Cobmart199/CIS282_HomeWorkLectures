#STEP 1 - open file and store references

people_file = File.open("database.txt", "r")

#Trail 1 - read in file into an array
#database = [] # empty array

=begin
until people_file.eof? #while !people_file.eof?
  #do something
  # take each record and store it in the array
  database.push(people_file.gets.chomp)
end
=end

#Trai 2 - breaking the file up before pushing into the array

# until people_file.eof?
#   record = people_file.gets.chomp.split(", ") # split returns array
#   #puts record.inspect
#   puts record
# end
#
#Trail 3
=begin
until people_file.eof?
  record = people_file.gets.chomp.split(", ")
  puts record.inspect

  #add a record to the database array
  database.push( record )
end

#Loop through the array and print out a meaninful report
database.each do | record |
  puts "#{record[0]} is #{record[1]} years old and has #{record[3]} colored hair"

end

puts database.inspect
=end

database = {}

until people_file.eof?
  record = people_file.gets.chomp.split(", ")
  #store data in a hash
  # hash[key] = value
  # for the assingment
  # hash[random number] = array of product details
  # products ={123 => ["shoes", 59.50]} this is the array of product details
  # key = 73m vakye = ["Foo Bar", "32", "blue", "gray"]
  database[rand(1..100)] = record
end
puts database.inspect

# close the file
people_file.close