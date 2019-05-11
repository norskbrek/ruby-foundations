# even_numbers = (1..99).select {|num| num % 2 == 0}

# even_numbers.each do |num|
#   puts num
# end

count = 1
while count <= 99
  puts count if count % 2 == 0
  count += 1
end