def average(array)

  sum = 0

  array.each do |number|
    sum += number
  end

  sum / array.size

end

puts average([1, 5, 87, 45, 8, 8])
puts average([9,47, 23, 95, 16, 52])