array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# It'll print:
# ['Moe', 'Larry', 'Curly', Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

# Why? Line 3 pushes the values from array1 into array2.
# array2 is a new array, and does not point to array1.

# I was wrong! But I had a hunch.
# array1 and array2 are not the same array, 
# but the objects referenced in each array are the SAME objects.
# array1 and array2 have different object IDs,
# but all their string object items have the same IDs.