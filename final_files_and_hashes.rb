#Part 1 of the assignment
# step 1 - open file and store reference
#
products_file = File.open("database.txt", "r")

#step 2 - read file and store content in hash

products = {}

until products_file.eof?
  record = products_file.gets.chomp.split(",") # creates an array of records
  record[1] = record[1].to_i # convert to a float

  #assing to hash: product[key] = value
  products[rand(100..999)] = record  # assigning record array
end

puts products.inspect

#print out report
products.each do |record_id, record|
  puts " #{record[0]},#{record[1]},#{record[2]},#{record[3]} "
end

# STEP 3 close the file
products_file.close


#################################################
# parts 2 of the assignment
# doing stuff with your hash of products
# Add a person to our collection
# prompt the user for  new person info
#

print "Please enter the person's name: "
name = gets.chomp

print " Please enter the person's age: "
age = gets.to_i

print "Please enter the person's eye color: "

eye_color = gets.chomp

print "Please enter ther person's hair color: "

hair_color = gets.chomp

# add to the hash
products[ rand(100..99) ] = [name, age, eye_color, hair_color]

#check to see if new person added to hash
puts products.inspect
##################################################

# Part 3 of  the assignment
# open file for writting, write contents of hash to file, close file

#open file for writing

products_file = File.open("database.txt", "w")

#write hash content to file
puts products.inspect

products.each do |record_id, record|
  #puts "#{record_id} -> #{record[0]}  - #{record[1]} - $#{record[2]}"
  products_file.puts " #{record[0]},#{record[1]},#{record[2]},#{record[3]} "
end

#close file
products_file.close
