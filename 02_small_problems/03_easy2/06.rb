numbers = (1..99).to_a

odd_numbers = numbers.select {|num| num % 2 != 0}

odd_numbers.each do |num|
  puts num
end
