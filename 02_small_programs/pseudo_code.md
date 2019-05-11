# a method that returns the sum of two integers

START
# given two integers
SET result = integer1 plus + integer2
PRINT result
END

# a method that takes an array of strings, and returns a string that is all those strings concatenated together

START 
# given array of strings
SET new_string = nil
ITERATE over array, for each array item, add it to new_string via concatenation
(array.each do {|string| new_string + string})
PRINT new_string

# a method that takes an array of integers, and returns a new array with every other element

START
# given array of integers
SET new_array = []
SET iterator = 0
WHILE iterator <= length of array
  IF iterator % 2 == 0
  push current number to new_array
  ELSE
  skip current number
  
  iterator = iterator += 1

  PRINT new_array
END