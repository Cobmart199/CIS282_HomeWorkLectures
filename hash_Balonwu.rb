############################################################
#  Name :       Cyril O. Balonwu
#  Assignment:   Hash
#  Date:        14/11/2018
#  Class:       CIS 282
#  Description: Hash
############################################################
users_choice = ""

def viewProducts()
  products_file = File.open("products.txt", "r")
  products = {}
  until products_file.eof?
    record = products_file.gets.chomp.split(",") # creates an array of records
    record[2] = record[2].to_f # convert to a float
    products[rand(100..999)] = record
  end

#puts products.inspect
  puts "Item  Description  Price     "
  puts "----  -----------  -----"
  products.each do |record_id, record|
    #puts "#{record_id} -> #{record[0]}  - #{record[1]} - $#{record[2]}"
    puts " #{record[0]}   #{record[1]}       $#{record[2]}"
  end

  products_file.close
end

def addProduct()
  products_file = File.open("products.txt", "a+")
  products = {}
  print "Please enter an Item e.g shoes,bike,belt etc : "
  item = gets.chomp
  print " Please enter Item's price : "
  price = gets.to_f
  products[ rand(100..999) ] = [item, price,]

  products.each do |record_id, record|
    products_file.puts "#{record_id},#{record[0]},#{record[1]}\n"
  end

#close file
  products_file.close

end

def deleteProduct()
  product_file = File.open("products.txt", "r+")
  del_file = File.new("products.txt", "w+")
  puts "Please specify the item number you want deleted?"
  item_num = gets.chomp
  product_file.each_line do |del|
    del_file.write(del) unless del.include? item_num
  end
end

def lowestProduct()
  products_file = File.open("products.txt", "r")
  products = {}
  until products_file.eof?
    record = products_file.gets.chomp.split(",") # creates an array of records
    record[2] = record[2].to_f # convert to a float
    products[rand(100..999)] = record
  end

#puts products.inspect
  puts "Item  Description  Price     "
  puts "----  -----------  -----"
#products.each do |k, record|
  puts products.select {|k,record| record == products.values.min}
#end

  products_file.close
end

def highestProduct()
  products_file = File.open("products.txt", "r")
  products = {}
  until products_file.eof?
    record = products_file.gets.chomp.split(",") # creates an array of records
    record[2] = record[2].to_f # convert to a float
    products[rand(100..999)] = record
  end

#puts products.inspect
  puts "Item  Description  Price     "
  puts "----  -----------  -----"
#products.each do |k, record|
  puts products.select {|k,record| record == products.max_by(&:last).last}
#end

  products_file.close
end

def sumProducts()
  products_file = File.open("products.txt", "r")
  products = {}
  until products_file.eof?
    record = products_file.gets.chomp.split(",") # creates an array of records
    record[2] = record[2].to_f # convert to a float
    products[rand(100..999)] = record
  end

#puts products.inspect

  puts products.inject(0) { |total, (k, record)| total + record.last }

  products_file.close
end

while users_choice != 8
  puts "******************************************************************************"
  puts "1. View all products"
  puts "2. Add a new product  "
  puts "3. Delete a product"
  puts "4. Update a product  "
  puts "5. View highest priced product "
  puts "6  View lowest priced product   "
  puts "7. View sum of all product prices   "
  puts "8. Exit  "
  puts "******************************************************************************"

  print "Please choose from the following list above: "

  users_choice = gets.to_i
      if users_choice == 1
        viewProducts()
      elsif users_choice == 2
        addProduct()
      elsif users_choice == 3
        deleteProduct()
      elsif users_choice == 4

      elsif users_choice == 5
        highestProduct()
      elsif users_choice == 6
        lowestProduct()
      elsif users_choice == 7
        sumProducts()
      elsif users_choice == 8
        puts "Quitting the application! "
      else
        puts "Please enter a number between 1 and 8 "
      end

end
