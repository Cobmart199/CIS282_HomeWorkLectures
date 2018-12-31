def print_grid( playing_board )
  playing_board.each do | row |
    puts row.join(" ")
  end
end


double_array = [

    ["a","b","c","d", "e"],
    [ "f", "G", "H","i","j"],
    ["k","l","m","n", "o"]
]

print_grid(double_array)

puts "Replace each letter in row 2 with x"
row = 1
col = 0

while col < double_array[row].size
  #replace each cell with x
  double_array[row][col] = 'x'

  col += 1
end

print_grid(double_array)

puts "Replace each letter in colum 2 with 0"
row = 0
col = 1

while row < double_array.size
  #replace each cell with 0
  double_array[row][col] = 0

  row += 1
end

print_grid(double_array);