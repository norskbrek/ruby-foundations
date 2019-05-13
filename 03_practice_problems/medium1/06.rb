def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += "rutabaga"

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# change line 2 to << instead of +=
# so you know it'll mutate the string.

# launch's solution (implemented):
# explicitly return the changes within the method,
# otherwise, you'll get two different results.