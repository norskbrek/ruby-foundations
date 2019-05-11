numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# It'll put 1 2 2 3
# uniq doesn't mutate the original array object, 
# so numbers still points to the original array.