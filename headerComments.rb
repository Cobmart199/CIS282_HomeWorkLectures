print "Please enter your full name ";
full_Name = gets.chomp();


print "Please enter Assignment Name: "
assignment_Name =  gets.chomp();

print "Please enter class number "
your_class =  gets.chomp();

print "Please enter Assignment Description: "
assignment_Description = gets.chomp();

date = Time.new
#set 'date' equal to the current date/time.

date = date.day.to_s + "/" + date.month.to_s + "/" + date.year.to_s


count = 60
count.times do
  print "#"
end


puts

puts  "#  Name :       #{full_Name}"
puts  "#  Assignment:  #{assignment_Name}"
puts  "#  Date:        #{date}"
puts  "#  Class:       #{your_class}"
puts  "#  Description: #{assignment_Description}"



count.times do
  print "#"
end



